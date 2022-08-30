package com.example.hrs.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customers")
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String firstName;
	private String lastName;
	private String email;
	private long identityNumber;
	private long phoneNumber;
	private String adress;
	private String entryTime;
	private String exitTime;
	private long roomNumber;

	
	public Customer() {
		
	}
	
	public Customer(String firstName, String lastName, String email, long identityNumber, long phoneNumber,
			String adress, String entryTime, String exitTime) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.identityNumber = identityNumber;
		this.phoneNumber = phoneNumber;
		this.adress = adress;
		this.entryTime = entryTime;
		this.exitTime = exitTime;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	public long getIdentityNumber() {
		return identityNumber;
	}
	public void setIdentityNumber(long identityNumber) {
		this.identityNumber = identityNumber;
	}

	public String getAdress() {
		return adress;
	}
	
	public void setAdress(String adress) {
		this.adress = adress;
	}
	
	public String getEntryTime() {
		return entryTime;
	}
	
	public void setEntryTime(String entryTime) {
		this.entryTime = entryTime;
	}
	
	public String getExitTime() {
		return exitTime;
	}
	
	public void setExitTime(String exitTime) {
		this.exitTime = exitTime;
	}
	
	public long getRoomNumber() {
		return roomNumber;
	}
	
	public void setRoomNumber(long roomNumber) {
		this.roomNumber = roomNumber;
	}
}
