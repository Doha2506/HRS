package com.example.hrs.models;

public class Reservation {
	
	private String firstName;
	private String lastName;
	private String email;
	private long identityNumber;
	private long phoneNumber;
	private String adress;
	private String entryTime;
	private String exitTime;
	private String roomType;
	private int numberOfGusets;
	private String paymentMethod;
	private String[] services;
	
	public Reservation() {
		
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

	public long getIdentityNumber() {
		return identityNumber;
	}

	public void setIdentityNumber(long identityNumber) {
		this.identityNumber = identityNumber;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
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

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public int getNumberOfGusets() {
		return numberOfGusets;
	}

	public void setNumberOfGusets(int numberOfGusets) {
		this.numberOfGusets = numberOfGusets;
	}

	public String getPaymentMethod() {
		return paymentMethod;
	}

	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String[] getServices() {
		return services;
	}

	public void setServices(String[] services) {
		this.services = services;
	}
	
}
