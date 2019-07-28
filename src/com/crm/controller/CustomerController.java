package com.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.crm.entity.Customer;
import com.crm.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	@GetMapping("/list")
	public String listCustomers(Model model) {
		List<Customer> customers = customerService.getCustomers();
		model.addAttribute("customers", customers);
		return "list_customers";
	}

	@GetMapping("/form")
	public String showCustomerForm(Model model) {
		model.addAttribute("customer", new Customer());
		return "customer_form";
	}

	@PostMapping("/create")
	public String createCustomer(Model model, @ModelAttribute("customer") Customer customer) {
		customerService.createCustomer(customer);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateForm")
	public String showCustomerUpdateForm(@RequestParam("id") int id, Model model) {
		Customer customer = customerService.getCustomer(id);
		model.addAttribute("customer", customer);
		return "customer_form";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("id") int id) {
		Customer customer = customerService.getCustomer(id);
		customerService.deleteCustomer(customer);
		return "redirect:/customer/list";
	}

}