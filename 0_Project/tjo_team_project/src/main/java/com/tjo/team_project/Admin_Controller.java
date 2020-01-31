package com.tjo.team_project;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Admin_Controller {
	
	@RequestMapping("/admin/main.do")
	public String adminMain() {
		return "admin/admin_main";
	}
	
}
