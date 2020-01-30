package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.API_MovieInformation_DB;
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
		
		List<MovieInfoVo> list = API_MovieInformation_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("list", list);
		return "test_result";
	}
	
	@RequestMapping("test_one.do")
	public String test_one(String docid, Model model) throws IOException {
		//docid = "F48331";
		
		List<MovieInfoVo> list = API_MovieInformation_DB.selectMovieOne(docid);
		
		model.addAttribute("list", list);
		return "test_result";
	}
	

}
