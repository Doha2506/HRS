package com.example.hrs.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class ServicesInRoom {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private long serviceId;
	private long roomNumber;
	
	public ServicesInRoom() {
		
	}
	
	public ServicesInRoom(long serviceId, long roomNumber) {
		super();
		this.serviceId = serviceId;
		this.roomNumber = roomNumber;
	}
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getServiceId() {
		return serviceId;
	}

	public void setServiceId(long serviceId) {
		this.serviceId = serviceId;
	}

	public long getRoomNumber() {
		return roomNumber;
	}

	public void setRoomNumber(long roomNumber) {
		this.roomNumber = roomNumber;
	}
	
}
