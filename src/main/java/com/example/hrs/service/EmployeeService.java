package com.example.hrs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hrs.models.Employee;
import com.example.hrs.repository.EmployeeRepository;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeRepository employeeRepo;
	

	public void addNewEmployee(Employee employee) {
		saveChanges(employee);
	}
	
	public void updateEmployeeInfo(Employee employee) {
		saveChanges(employee) ;
	}
	
	private void saveChanges(Employee employee) {
		employeeRepo.save(employee);
	}
	
	public void deleteEmployeeById(long id) {
		employeeRepo.deleteById(id);
	}

	public Employee getEmployeeById(long id) {
			return  employeeRepo.findById(id).get();
	}
	
	public boolean isEmployeeExist(long id) {
		return employeeRepo.existsById(id);
	}
	
	public boolean isReceptionist(Employee employee) {
		
		if(employee.getDeprtmentName().equals("Receptionist")) {
			return true;
		}
		
		return false;
	}
	
	public boolean verifyEmail(Employee employee,String email,String password) {
		
		return (employee.getEmail().equals(email) && employee.getPassword().equals(password));
		
	}
	public Employee getEmployeeByEmail(String email) {
		List<Employee> allEmployees = getAllEmployees();
		for (Employee employeeIterator : allEmployees) {
			if(employeeIterator.getEmail().equals(email))
				return employeeIterator;
		}
		return null;
	}
	
	public List<Employee> getAllEmployees(){
		return employeeRepo.findAll();
	}
}
