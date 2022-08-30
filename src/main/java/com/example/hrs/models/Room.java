package com.example.hrs.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Room {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String roomType;
	private double price;
	private String reserved = "No";
	private int numberOfGusets;
	
	public Room() {
		
	}

	public Room(String roomType, double price, int numberOfGusets) {
		super();
		this.roomType = roomType;
		this.price = price;
		this.numberOfGusets = numberOfGusets;
	}

	public Room(String roomType, int numberOfGusets) {
		super();
		this.roomType = roomType;
		this.numberOfGusets = numberOfGusets;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getRoomType() {
		return roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getReserved() {
		return reserved;
	}

	public void setReserved(String reserved) {
		this.reserved = reserved;
	}
	
	public int getNumberOfGusets() {
		return numberOfGusets;
	}

	public void setNumberOfGusets(int numberOfGusets) {
		this.numberOfGusets = numberOfGusets;
	}
	
	@Override
	public String toString() {
		return "Room [id= " + id + ", roomType= " + roomType + ", price= " + price
				+ ", isReserved= " + reserved + ", numberOfGusets= " + numberOfGusets + "]";
	}
	
}
