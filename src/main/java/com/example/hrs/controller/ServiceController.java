package com.example.hrs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.hrs.models.Services;
import com.example.hrs.service.ServicesImp;

@Controller
@RequestMapping("Service")
public class ServiceController {
	
	@Autowired
	private ServicesImp servicesImp;
	
	@GetMapping("/AddService")
	public String addService(Model serviceModel) {
		Services service = new Services();
		serviceModel.addAttribute("service",service);
		return "addService";
	}
		
	@PostMapping("/SaveService")
	public String saveRoomOrService(Model errorModel, @ModelAttribute("service") Services service) {
		if(!servicesImp.isServiceNull(service)) {
			servicesImp.addNewService(service);		
		    return "Home2";
		}else {
			String errorMsg = "Please enter the informtion !! ";
			errorModel.addAttribute("errorMsg", errorMsg);
			return "addService";
		}
	}
	
	@GetMapping("/UpdateService")
	public String updateService(Model model,@RequestParam long Id) {
		Services service = servicesImp.getServiceById(Id);
		model.addAttribute("service", service);	
		return "updateServiceInfo";
	}
				
	@PostMapping("/saveUpdateService")
	public String saveUpdateService(@ModelAttribute("service") Services service, @RequestParam long Id) {
		servicesImp.updateServiceInfo(service);
		return "Home2";
	}
		
	@GetMapping("/DeleteService")
	public String deleteService(@RequestParam long Id) {
		servicesImp.deleteServiceById(Id);
		return "redirect:ShowAllServices";
	}
	
	
	@GetMapping("/ShowAllServices")
	public String showAllServices(Model model) {
		List<Services> services = servicesImp.getAllServices();
		model.addAttribute("services", services);
		return "showAllServices";
	}
	
	
	
}
