package com.example.hrs.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "employees")
public class Employee {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String firstName;
	private String lastName;
	private long identityNumber;
	private String deprtmentName;
	private double salary;
	private String gender;
	private String email;
	private String password;
	private long phoneNumber;
	
	public Employee() {
		
	}
	
	public Employee(String firstName, String lastName, long identityNumber, String deprtmentName, double salary,
			String gender, String email, String password, long phoneNumber) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.identityNumber = identityNumber;
		this.deprtmentName = deprtmentName;
		this.salary = salary;
		this.gender = gender;
		this.email = email;
		this.password = password;
		this.phoneNumber = phoneNumber;
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public long getIdentityNumber() {
		return identityNumber;
	}

	public void setIdentityNumber(long identityNumber) {
		this.identityNumber = identityNumber;
	}

	public String getDeprtmentName() {
		return deprtmentName;
	}

	public void setDeprtmentName(String deprtmentName) {
		this.deprtmentName = deprtmentName;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

}
