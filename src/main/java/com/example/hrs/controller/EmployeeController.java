package com.example.hrs.controller;

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

import com.example.hrs.models.Employee;
import com.example.hrs.service.EmployeeService;

@Controller
@RequestMapping("Employee")
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/AddEmployee")
	public String addNewEmployee(Model model) {
		Employee employee = new Employee();
		model.addAttribute("employee", employee);
		return "addEmployee";
	}
	
	@PostMapping("/SaveNewEmployee")
	public String saveNewEmployee(@ModelAttribute("employee") Employee employee) {
		employeeService.addNewEmployee(employee);		     
	    return "Home";
	}
	
	
	@GetMapping("/updateEmployee")
	public String updateEmployee(ModelMap model,@RequestParam long Id) {
		Employee employee = employeeService.getEmployeeById(Id);
		model.addAttribute("employee", employee);		
		return "updateEmployeeInfo";
	}
		
	@PostMapping("/saveUpdateEmployee")
	public String saveUpdateEmployee(@ModelAttribute("employee") Employee employee,@RequestParam long Id) {
		employee.setId(Id);
		employeeService.updateEmployeeInfo(employee);	
		return "Home2";
	}
	
	@GetMapping("/DeleteEmployee")
	public String deleteEmployee(@RequestParam long Id) {
		employeeService.deleteEmployeeById(Id);
		return "redirect:ShowAllEmployees";
	}
		
	@GetMapping("/ShowAllEmployees")
	public String showAllEmployees(Model model) {
		List<Employee> employees = employeeService.getAllEmployees();
		model.addAttribute("employees", employees);
	    return "showAllEmployees";
	}
		
}
