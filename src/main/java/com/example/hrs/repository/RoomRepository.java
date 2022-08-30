package com.example.hrs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.hrs.models.Room;

public interface RoomRepository extends JpaRepository<Room, Long> {

}
