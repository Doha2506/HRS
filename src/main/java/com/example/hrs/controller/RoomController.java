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

import com.example.hrs.models.Room;
import com.example.hrs.service.RoomService;
import com.example.hrs.service.ServicesInRoomImp;

@Controller
@RequestMapping("Room")
public class RoomController {
	
	@Autowired
	private RoomService roomService;
	
	@Autowired
	private ServicesInRoomImp servicesInRoom;
	
	@GetMapping("/AddRoom")
	public String addRoom(Model roomModel) {
		Room room = new Room();
		roomModel.addAttribute("room",room);
		return "addRoom";
	}
		
	@PostMapping("/SaveRoom")
	public String saveRoomOrService(Model errorModel, @ModelAttribute("room") Room room) {
		if(!roomService.isRoomNull(room)) {
			roomService.addNewRoom(room);	
		    return "Home2";
		}else {
			String errorMsg = "Please enter the informtion !! ";
			errorModel.addAttribute("errorMsg", errorMsg);
			return "addRoomOrService";
		}
	}
	
	@GetMapping("/UpdateRoom")
	public String updateRoom(ModelMap model,@RequestParam long Id) {
		Room room = roomService.getRoomById(Id);
		model.addAttribute("room", room);	
		return "updateRoomInfo";
	}
				
	@PostMapping("/saveUpdateRoom")
	public String saveUpdateRoom(@ModelAttribute("room") Room room, @RequestParam long Id) {
		room.setId(Id);
		roomService.updateRoomInfo(room);
		return "Home2";
	}
		
	@GetMapping("/DeleteRoom")
	public String deleteRoom(@RequestParam long Id) {
		roomService.deleteRoomById(Id);
		return "redirect:ShowAllRooms";
	}
		
	@GetMapping("/ShowAllRooms")
	public String showAllRooms(ModelMap model) {
		List<Room> rooms = roomService.getAllRooms();
		model.addAttribute("rooms", rooms);
		List<List<String>> services = servicesInRoom.getServicesInAllRooms(rooms);
		model.addAttribute("services", services);
		return "showAllRooms";
	}
}
