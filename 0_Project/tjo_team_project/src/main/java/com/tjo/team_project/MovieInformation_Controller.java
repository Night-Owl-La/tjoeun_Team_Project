package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.API_MovieInfomation_DB;
import vo.MovieInfoVo;

@Controller
public class MovieInformation_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("test_form.do")
	public String test_input() {
		return "test_input";
	}
	
	@RequestMapping("test.do")
	public String test(Model model) throws IOException {
		
		String search_Key = request.getParameter("search_Key");
		String search_Value = request.getParameter("search_Value");
		
		List<MovieInfoVo> list = API_MovieInfomation_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("list", list);
		return "test_result";
	}

}
