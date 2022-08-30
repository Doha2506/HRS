package com.example.hrs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.hrs.models.Employee;
import com.example.hrs.service.EmployeeService;




@Controller
public class HomeController {
			
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/login")
	public String login(Model model) {
		Employee employee = new Employee();
	    model.addAttribute("employee", employee);
		return "login";
	}
	
	@PostMapping("/loginResult")
	public String submitForm(Model model,  @ModelAttribute("employee") Employee employee) {
	    
	    Employee dbEmployee = employeeService.getEmployeeByEmail(employee.getEmail());

	    if(dbEmployee != null 
	    	&& employeeService.verifyEmail(dbEmployee, employee.getEmail(), employee.getPassword()) 
	    	&& employeeService.isReceptionist(dbEmployee))
	    	return "Home2";
	    String errorMsg = "Please enter the correct email & password";
	    model.addAttribute("errorMsg", errorMsg);
	    return "login";
	}
	
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
	@GetMapping("/home2")
	public String home2() {
		return "Home2";
	}
	
}
	
	
	
	

