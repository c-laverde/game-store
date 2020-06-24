package com.gamestore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gamestore.entity.Customer;
import com.gamestore.repository.CustomerRepository;

@RestController
@RequestMapping(path = "/api/customer")
public class CustomerController {
	
	@Autowired
	private CustomerRepository customerRepository;

	@GetMapping(path = "/all")
	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}
	
	@PostMapping(path = "/save")
	public Customer createCustomer(@RequestBody Customer customer) {
		return customerRepository.save(customer);
	}
}
