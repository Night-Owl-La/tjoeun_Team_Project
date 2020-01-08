package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.API_Search_MovieInfo;

@Controller
public class Search_MovieInfo_Controller {
	
	API_Search_MovieInfo api;
	
	@RequestMapping("test.do")
	public String test(Model model) throws IOException {
		api = new API_Search_MovieInfo();
		List list = api.searchMovieList("title", "겨울왕국");
		
		model.addAttribute("list", list);
		return "test";
	}

}
