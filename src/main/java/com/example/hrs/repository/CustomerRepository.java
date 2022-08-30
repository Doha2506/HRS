package com.example.hrs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.hrs.models.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long>{

}
