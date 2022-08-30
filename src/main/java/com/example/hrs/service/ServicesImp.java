package com.example.hrs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hrs.models.Services;
import com.example.hrs.repository.ServicesRepository;

@Service
public class ServicesImp {
	
	@Autowired
	private ServicesRepository serviceRepo;
	
	public void addNewService(Services services) {
		saveChanges(services);
	}
	
	public void updateServiceInfo(Services services) {
		saveChanges(services) ;
	}
	
	private void saveChanges(Services services) {
		serviceRepo.save(services);
	}
	
	public void deleteServiceById(Long id) {
		serviceRepo.deleteById(id);
	}

	public Services getServiceById(Long id) {
		return  serviceRepo.findById(id).get();
	}
	
	public boolean isServiceExist(Long id) {
		return serviceRepo.existsById(id);
	}
	
	public List<Services> getAllServices() {	
		return serviceRepo.findAll();
    }
	
	public boolean isServiceNull(Services service) {
		return (service.getPrice() == 0.0 && service.getName().equals(""));
	}
	
	public long getServiceIdByName(String serviceName) {
		List<Services> allServices = getAllServices();
		for (Services serviceIterator : allServices) {
			if(serviceIterator.getName().equals(serviceName))
				return serviceIterator.getId();
		}
		return -1;
	}
	
	public double getServicesPrice(List<Services> services) {
		double servicesPrice = 0;
		
		for(Services serviceIterator : services) 
				servicesPrice += serviceIterator.getPrice();
				
		return servicesPrice;
	}
	
	public String getServiceNameById(long Id) {
		List<Services> services = getAllServices();
		for(Services serviceIterator : services) {
			if(serviceIterator.getId() == Id)
				return serviceIterator.getName();
		}
		return null;
	}
}
