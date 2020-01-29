package com.tjo.team_project;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomerCenter_Controller {

	@RequestMapping("/customer_center/customer_main.do")
	public String showCustomerMain() {
		return "customer_center/customer_main";
	}
	
	@RequestMapping("/customer_center/customer_center.do")
	public String showCustomerCenter() {
		return "customer_center/customer_fixed";
	}
	
}
