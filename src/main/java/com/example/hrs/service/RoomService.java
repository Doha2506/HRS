package com.example.hrs.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.hrs.models.Room;
import com.example.hrs.repository.RoomRepository;

@Service
public class RoomService {
	
	@Autowired
	private RoomRepository roomRepo;
	
	public void addNewRoom(Room room) {
		saveChanges(room);
	}
	
	public void updateRoomInfo(Room room) {
		saveChanges(room) ;
	}
	
	private void saveChanges(Room room) {
		roomRepo.save(room);
	}
	
	public void deleteRoomById(Long id) {
		roomRepo.deleteById(id);
	}

	public Room getRoomById(Long id) {
			return  roomRepo.findById(id).get();
	}
	
	public boolean isRoomExist(Long id) {
		return roomRepo.existsById(id);
	}
	
	public boolean isRoomNull(Room room) {
		return (room.getPrice() == 0.0 && room.getNumberOfGusets() == 0);
	}
	 
	public List<Room> getAllRooms() {	
		return roomRepo.findAll();
    }
	
	public long isSuitableRoom(Room room) {
		List<Room> allRooms = getAllRooms();
		for (Room roomIterator : allRooms) {
			if(roomIterator.getReserved().equals("No")  // if Not reserved
					&& roomIterator.getRoomType().equals(room.getRoomType())   // if the room type is accepted
					&& room.getNumberOfGusets() <= roomIterator.getNumberOfGusets())  // if the number of guests is accepted
				return roomIterator.getId();
		}
		return -1; // if not suitable room
	}

	public void setReservedRoom(long roomNumber) {
		List<Room> allRooms = getAllRooms();
		for (Room roomIterator : allRooms) {
			if(roomIterator.getId() == roomNumber)  {
				roomIterator.setReserved("Yes");
				updateRoomInfo(roomIterator);
				return;
			}
		}
	}
	

	public List<Room> getAllReservedRooms(){
		List<Room> allRooms = getAllRooms();
		List<Room> ReservedRooms = new ArrayList<Room>();
		for (Room roomIterator : allRooms) {
			if(roomIterator.getReserved() == "Yes") {
				ReservedRooms.add( roomIterator);
			}
		}
		return ReservedRooms;
	}
	
	public List<Room> getAllRoomsByType(String roomType){
		List<Room> allRooms = getAllRooms();
		List<Room> requiredRooms = new ArrayList<Room>();
		for (Room roomIterator : allRooms) {
			if(roomIterator.getRoomType().equals(roomType))
				requiredRooms.add(roomIterator);
		}
		return requiredRooms;
	}
	
	public double getRoomPriceById(long id) {
		List<Room> allRooms = getAllRooms();
		for (Room roomIterator : allRooms) {
			if(roomIterator.getId() == id)
				return roomIterator.getPrice();
		}
		return -1;	
	}
	public long getIdbyPriceAndNoOfGuests(double price,int noOfGuests) {
		List<Room> allRooms = getAllRooms();
		for (Room roomIterator : allRooms) {
			if(roomIterator.getPrice() == price && roomIterator.getNumberOfGusets() == noOfGuests)
				return roomIterator.getId();
		}
		return -1;
	}
	
	
}
