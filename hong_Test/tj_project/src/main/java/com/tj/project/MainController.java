package com.tj.project;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.API_MovieData_DB;
import vo.API_MovieDataVo;

@Controller
public class MainController {
	
	@RequestMapping("/main/main.do")
	public String main(Model model) throws IOException {
	
	//°Ü¿ï¿Õ±¹2
	API_MovieDataVo vo = API_MovieData_DB.selectMovieOne("F48331");
	
	
	model.addAttribute("movieVo", vo);
	
	//°Ü¿ï¿Õ±¹
	API_MovieDataVo vo1 = API_MovieData_DB.selectMovieOne("F32196");
	
	model.addAttribute("movieVo1", vo1);
	
	
	
		return "main/main";
	}
	
	@RequestMapping("/main/sub.do")
	public String sub(Model model) throws IOException {
		
		
		return "main/sub";
	}

}
