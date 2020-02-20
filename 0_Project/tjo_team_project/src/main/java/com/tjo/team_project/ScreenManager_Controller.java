package com.tjo.team_project;

import java.io.IOException;
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
import vo.Screen_RegdataVo;
import vo.Screen_ScheduleVo;

@Controller
public class ScreenManager_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ScreenDao screenDao;
	
	// #### 영화 검색 #### 
	
	@RequestMapping("/screenManager/search_form.do")
	public String searchMovie_Form() { return "screenManager/search_movie_form"; }
	
	@RequestMapping("/screenManager/search_list.do")
	public String searchMovie_List(String search_Key, String search_Value, Model model) throws Exception {
		List<API_MovieDataVo> searchMovie_List = API_MovieData_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("searchMovie_List", searchMovie_List);
		return "screenManager/search_movie_list";
	}
	
	// #### 영화 등록 ####
	
	@RequestMapping("/screenManager/insert_form.do")
	public String movieInsert_Form(String DOCID, Model model) throws Exception {
		API_MovieDataVo API_Vo = API_MovieData_DB.selectMovieOne(DOCID);
		model.addAttribute("API_Vo", API_Vo);
		return "screenManager/screen_insert_form"; 
	}
	
	@RequestMapping("/screenManager/insert.do")
	public String movieInsert(Screen_RegdataVo regdataVo, Screen_ScheduleVo scheduleVo) {
		
		// 등록된 영화 중복체크.
		if(screenDao.selectOne_Regdata(regdataVo) == null) { screenDao.insert_Regdata(regdataVo); }
		
		regdataVo = screenDao.selectOne_Regdata(regdataVo);
		scheduleVo.setScreen_regdata_idx(regdataVo.getScreen_regdata_idx());
		screenDao.insert_Schedule(scheduleVo);
		
		return "redirect:/screenManager/screenRegdata_list.do";
	}
	
	// #### 등록된 영화 상영정보 ####
	
	@RequestMapping("/screenManager/screenRegdata_list.do")
	public String regScreenList(Model model, Screen_FullDataVo vo) {
		List<Screen_FullDataVo> screen_FullData_List = screenDao.selectList_FullData();
		model.addAttribute("screen_FullData_List", screen_FullData_List);
		
		return "screenManager/screen_regdata_list";
	}

}
