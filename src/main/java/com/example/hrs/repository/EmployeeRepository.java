package com.example.hrs.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.hrs.models.Employee;

public interface EmployeeRepository extends JpaRepository< Employee, Long> {

}
