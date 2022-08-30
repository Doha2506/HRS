package com.example.hrs.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.hrs.models.Room;
import com.example.hrs.models.ServicesInRoom;
import com.example.hrs.repository.ServicesInRoomRepoitory;

@Service
public class ServicesInRoomImp {
	
	@Autowired
	ServicesInRoomRepoitory serviceRoomRepo;
	
	@Autowired
	private ServicesImp servicesImp;
	
	public void addServiceToRoom(ServicesInRoom roomervice) {
		serviceRoomRepo.save(roomervice);
	}
	
	public List<ServicesInRoom> getAllServicesInAllRooms(){
		return serviceRoomRepo.findAll();
	}
	
	public void deleteServiceInRoom(Long id) {
		serviceRoomRepo.deleteById(id);
	}
	
	public List<List<String>> getServicesInAllRooms(List<Room> rooms) {
		List<List<String>> servicesInAllRooms = new  ArrayList<List<String>>();
		for(Room room : rooms) {
			List<String> list = getServicesInRoomById (room.getId());
			servicesInAllRooms.add(list);
		}
		return servicesInAllRooms;
	}
	
	private List<String> getServicesInRoomById (long Id){
		List<ServicesInRoom>  services = getAllServicesInAllRooms();
		List<String> servicesInRoom = new ArrayList<String>();
		for(ServicesInRoom serviceIterator : services) {
			if (serviceIterator.getRoomNumber() == Id) {
				String serviceName = servicesImp.getServiceNameById(serviceIterator.getServiceId());
				if(serviceName != null)
					servicesInRoom.add(serviceName);
			}
		}
		return servicesInRoom;
	}
	
}

