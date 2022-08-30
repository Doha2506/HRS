package com.example.hrs.service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.hrs.models.Customer;
import com.example.hrs.repository.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepo;
	
	public void addNewCutomer(Customer customer) {
		saveChanges(customer);
	}
	
	public void updateCustomerInfo(Customer customer) {
		saveChanges(customer) ;
	}
	
	private void saveChanges(Customer customer) {
		customerRepo.save(customer);
	}
	
	public void deleteCustomerById(Long id) {
		customerRepo.deleteById(id);
	}

	public Customer getCustomerById(Long id) {
		return  customerRepo.findById(id).get();
	}
	
	public boolean isCustomerExist(Long id) {
		return customerRepo.existsById(id);
	}
	
	public List<Customer> getAllCustomers(){
		return customerRepo.findAll();
	}
	
	public void addRoomNumberToCustomer(Long customerId,long roomNumber) {
		Customer customer = getCustomerById(customerId) ;
		customer.setRoomNumber(roomNumber);
		updateCustomerInfo(customer) ;	
	}
	
	public long getCutomerIdByIdentityNumber(long identityNumber) {
		List<Customer> allCustomers = getAllCustomers();
		for (Customer customerIterator : allCustomers) {
			if(customerIterator.getIdentityNumber() == identityNumber)
				return customerIterator.getId();
		}
		return -1;		
	}
				
	public int getNumberOfNights(long id) {
		Customer customer = getCustomerById(id);
		
		LocalDate entryTime = converStringToLocalDate(customer.getEntryTime());
		
		LocalDate exitTime = converStringToLocalDate(customer.getExitTime());
		
		int numberOfYears =  getDiffrence(entryTime.getYear(), exitTime.getYear());
		
		int numberOfMonths = getDiffrence(entryTime.getMonthValue(),exitTime.getMonthValue());				
		
		int numberOfDays = getDiffrence(entryTime.getDayOfMonth(),exitTime.getDayOfMonth());
		
		numberOfDays = setNumberOfDaysPositive(numberOfDays);
		
		int numberOfNights = computeNumberOfNights(numberOfYears, numberOfMonths, numberOfDays);
		
		return numberOfNights;
	}
	
	private LocalDate converStringToLocalDate(String date) {
		return LocalDate.parse(date);
	}
	
	private int getDiffrence(int entryTime,int exitTime) {
		return exitTime - entryTime;
	}
	
	private int setNumberOfDaysPositive(int numberOfDays) {
		if(numberOfDays < 0)
			numberOfDays = -numberOfDays;
		return numberOfDays;
	}
	private int computeNumberOfNights(int numberOfYears, int numberOfMonths, int numberOfDays) {
		return  numberOfDays + numberOfMonths * 30 + numberOfYears * 365;
	}
	
	public List<Customer> getNearCheckoutCustomers(){
		LocalDate todayDay = getDateOfToday();
		LocalDate exitDay;
		int diffrence;
		
		List<Customer> allCustomers = getAllCustomers();
		List<Customer> nearCheckoutCustomers = new ArrayList<Customer>();
		
		for (Customer customerIterator : allCustomers) {
			
			exitDay = converStringToLocalDate(customerIterator.getExitTime());
			
			diffrence = getDiffrence(todayDay.getDayOfMonth(), exitDay.getDayOfMonth());
						
			if(diffrence <= 2 && diffrence >=0)
				nearCheckoutCustomers.add(customerIterator);
		}
		return nearCheckoutCustomers;
	}
	
	private LocalDate getDateOfToday() {
		return LocalDate.now();
	}
	
	public double computeBill(double roomPrice,int numberOfNights,double servicesPrice) {
		return roomPrice * numberOfNights + servicesPrice;
	}
		
	
	
	
}
