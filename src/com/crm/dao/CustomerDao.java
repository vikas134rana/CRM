package com.crm.dao;

import java.util.List;

import com.crm.entity.Customer;

public interface CustomerDao {

	List<Customer> getCustomersList();

	void createCustomer(Customer customer);
	
	Customer getCustomer(int id);

	void deleteCustomer(Customer customer);
}
