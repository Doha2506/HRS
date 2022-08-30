package com.example.hrs.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hrs.models.ServicesInRoom;
import com.example.hrs.models.Customer;
import com.example.hrs.models.Reservation;
import com.example.hrs.models.Room;
import com.example.hrs.models.Services;
import com.example.hrs.service.CustomerService;
import com.example.hrs.service.RoomService;
import com.example.hrs.service.ServicesImp;
import com.example.hrs.service.ServicesInRoomImp;


@Controller
@RequestMapping("Customer")
public class CustomerController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private ServicesImp servicesImp;
	
	@Autowired
	private ServicesInRoomImp servicesInRoomImp;
	
	@GetMapping("/UpdateCustomer")
	public String updateCustomer(ModelMap model,@RequestParam long Id) {
		Customer customer = customerService.getCustomerById(Id);
		model.addAttribute("customer", customer);		
		return "updateCustomerInfo";
	}
			
	@PostMapping("/saveUpdateCustomer")
	public String saveUpdateCustomer(@ModelAttribute("customer") Customer customer,@RequestParam long Id) {
		customer.setId(Id);
		customerService.updateCustomerInfo(customer);
		return "Home2";
	}
		
	@GetMapping("/DeleteCustomer")
	public String deleteCustomer(@RequestParam long Id) {
		modifyRoom(Id);
		customerService.deleteCustomerById(Id);
		return "redirect:ShowAllCustomers";
	}
	private void modifyRoom(long customerId) {
		Customer customer = customerService.getCustomerById(customerId);
		Room room = roomService.getRoomById(customer.getRoomNumber());
		setRoomUnreserved(room);
		deleteServicesInRoom(room.getId());
	}
	
	private void setRoomUnreserved(Room room) {
		room.setReserved("No");
		roomService.updateRoomInfo(room);
	}
	
	private void deleteServicesInRoom(long roomNumber) {
		List<ServicesInRoom> services = servicesInRoomImp.getAllServicesInAllRooms();
		for(ServicesInRoom serviceIterator : services) {
			if(serviceIterator.getRoomNumber() == roomNumber) 
				servicesInRoomImp.deleteServiceInRoom(serviceIterator.getId());
		}
	}
	
	@GetMapping("/ShowAllCustomers")
	public String showAllCustomers(Model model) {
		List<Customer> customers = customerService.getAllCustomers();
		model.addAttribute("customers", customers );
		return "showAllCustomers";
	}
				
		
	@GetMapping("/AddReservation")
	public String addNewReservation(ModelMap model) {
		model.addAttribute("reservation", new Reservation());
		model.addAttribute("services", servicesImp.getAllServices());
		return "addReservation";
	}
		
	@PostMapping("/SaveNewReservation")
	public String saveNewReservation(ModelMap model, @ModelAttribute("reservation") Reservation reservation) {
		if(assignRoomToCustomer(reservation))
			return "Home2";
		else {
			String errorMsg = "Opps !! There i no empty room with this options, Please choose another room ";
			model.addAttribute("errorMsg", errorMsg);
			model.addAttribute("services", servicesImp.getAllServices());
			return "addReservation";
		}
	}
		
	private boolean assignRoomToCustomer(Reservation reservation) {
		long roomNumber = getSutibleRoomNumber(reservation);
		
		if(roomNumber != -1) {
			addCustomer(reservation);
				
			long customerId = customerService.getCutomerIdByIdentityNumber(reservation.getIdentityNumber());

			customerService.addRoomNumberToCustomer(customerId, roomNumber); 
				
			roomService.setReservedRoom(roomNumber);
			
			addServicestoRoom(reservation,roomNumber);
								
			return true;
					
		}else
			return false;
	}
		
	private long getSutibleRoomNumber(Reservation reservation) {
		
		Room room = new Room(reservation.getRoomType(),reservation.getNumberOfGusets());	
		long roomNumber = roomService.isSuitableRoom(room);

		if(roomNumber != -1)
			return roomNumber;
		else
			return -1;
	}
		
	private void addServicestoRoom(Reservation reservation,long roomNumber) {
		String[] services = reservation.getServices();
		
		for(int i=0; i < services.length;i++) {
			long serviceId = servicesImp.getServiceIdByName(services[i]);
			servicesInRoomImp.addServiceToRoom(new ServicesInRoom(serviceId,roomNumber));
		}
		
		
	}
	
	private void addCustomer(Reservation reservation) {
		Customer customer = new Customer();
			
		customer.setFirstName(reservation.getFirstName());
		customer.setLastName(reservation.getLastName());
		customer.setIdentityNumber(reservation.getIdentityNumber());
		customer.setEmail(reservation.getEmail());
		customer.setEntryTime(reservation.getEntryTime());
		customer.setExitTime(reservation.getExitTime());
		customer.setAdress(reservation.getAdress());
		customer.setPhoneNumber(reservation.getPhoneNumber());

		customerService.addNewCutomer(customer);
			
	}
	
	@GetMapping("/ShowBill")
	public String showBill(ModelMap model,@RequestParam long customerId,@RequestParam long roomId) {		
		
		Customer customer = customerService.getCustomerById(customerId);
		model.addAttribute("customer",customer);
				
		Room room = roomService.getRoomById(roomId);
		model.addAttribute("room",room);
		
		List<Services> usedServices = getUsedServices(roomId);
		model.addAttribute("usedServices",usedServices);
		
		double roomPrice = roomService.getRoomPriceById(roomId);
		int numberOfNights = customerService.getNumberOfNights(customerId);
		double servicesPrice = servicesImp.getServicesPrice(usedServices);
		
		double bill = customerService.computeBill(roomPrice, numberOfNights,servicesPrice);
		model.addAttribute("bill",bill);
				
		
		return "showBill";
	}
	
	private List<Services> getUsedServices(long roomNumber) {
		List<Services> usedServices = new ArrayList<Services>();

		List<ServicesInRoom> services = servicesInRoomImp.getAllServicesInAllRooms();
		for(ServicesInRoom serviceIterator : services) {
			if(serviceIterator.getRoomNumber() == roomNumber) {
				Services service = servicesImp.getServiceById(serviceIterator.getServiceId());
				usedServices.add(service);
			}
		}
		return usedServices;
	}
				
	@GetMapping("/ShowNearCheckoutCustomer")
	public String showNearCheckoutCustomer(Model model) {
		List<Customer> customers = customerService.getNearCheckoutCustomers();
		model.addAttribute("customers", customers);
		return "showAllCustomers";
	}
}
