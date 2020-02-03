package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.API_MovieData_DB;
import vo.API_MovieDataVo;

@Controller
public class ScreenManager_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@RequestMapping("/screenManager/search_form.do")
	public String movieReg() {
		return "screenManager/search_movie_form";
	}
	
	@RequestMapping("/screenManager/search_list.do")
	public String movieListAll(Model model) throws IOException {
		String search_Key = request.getParameter("search_Key");
		String search_Value = request.getParameter("search_Value");
		
		List<API_MovieDataVo> list = API_MovieData_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("list", list);
		
		return "screenManager/search_movie_list";
	}
	
	@RequestMapping("/screenManager/data_view.do")
	public String regScreenOne(String DOCID, Model model) {
		// F48331
		// F41181
		// F32196
		
		//List<String> screen_RegdataList = screen_RegdataDao.selectList_DOCID();
		
		return "screenManager/screen_data_view";
	}
	
	@RequestMapping("/screenManager/insert_form.do")
	public String movieInsertForm(String DOCID, Model model) throws IOException {
		API_MovieDataVo API_vo = API_MovieData_DB.selectMovieOne(DOCID);
		model.addAttribute("API_vo", API_vo);
		return "screenManager/screen_insert_form"; 
	}
	
	@RequestMapping("/screenManager/insert.do")
	public String movieInsert(String DOCID) { // TODO 전달인자 및 메소드 튜닝.
		
		//int res = regScreenDao.insert(vo);
		
		return "redirect:/screenManager/data_view.do";
	}


}
