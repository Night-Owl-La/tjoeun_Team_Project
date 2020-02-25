package com.tjo.team_project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ScreenDao;
import util.API_MovieData_DB;
import vo.API_MovieDataVo;
import vo.Screen_FullDataVo;

@Controller
public class _Test_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ScreenDao screenDao;

	// 이것저것 테스트
	@RequestMapping("latest")
	public String latest() {
		List<Screen_FullDataVo> list = screenDao.selectList_FullData();
		
		for (Screen_FullDataVo screenAllVo : list) {
			System.out.println(screenAllVo.toString());
		}
		
		return "";
	}
	
	@RequestMapping("test_form.do")
	public String test_input() {
		return "test_input";
	}
	
	@RequestMapping("test.do")
	public String test(Model model) throws Exception {
		
		String search_Key = request.getParameter("search_Key");
		String search_Value = request.getParameter("search_Value");
		
		List<API_MovieDataVo> list = API_MovieData_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("list", list);
		return "test_result";
	}
	
	@RequestMapping("test_one.do")
	public String test_one(String docid, Model model) throws Exception {
		//docid = "F48331";
		
		//List<API_MovieDataVo> list = API_MovieData_DB.selectMovieOne(docid);
		API_MovieDataVo vo = API_MovieData_DB.selectMovieOne(docid);
		
		//model.addAttribute("list", list);
		return "test_result";
	}
}
