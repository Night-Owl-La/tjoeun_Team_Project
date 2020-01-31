package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ScreenTicketDao;
import dao.TheaterDao;
import service.ScreenAllData;
import util.API_MovieData_DB;
import vo.API_MovieDataVo;
import vo.ScreenAllDataVo;
import vo.ScreenTicketVo;
import vo.TheaterVo;

@Controller
public class ScreenManager_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ScreenAllData screenAllData;
	
	@Autowired
	TheaterDao theaterDao;
	
	@Autowired
	ScreenTicketDao screenTicketDao;
	
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
		ScreenAllDataVo toTalDataVo = screenAllData.selectOne("F48331");
		// F41181
		// F32196
		
		List<TheaterVo> theaterList = theaterDao.selectList(); 
		model.addAttribute("theaterList", theaterList);
		
		model.addAttribute("scrRegInfoVo", toTalDataVo.getScrRegInfoVo());
		model.addAttribute("scrVo", toTalDataVo.getScrVo());
		model.addAttribute("scrTicketVo", toTalDataVo.getScrTicketVo());
		model.addAttribute("theaterVo", toTalDataVo.getTheaterVo());
		model.addAttribute("scrSeatVo", toTalDataVo.getScrSeatVo());
		
		return "screenManager/screen_data_view";
	}
	
	@RequestMapping("/screenManager/insert.do")
	public String movieInsert() { // TODO 전달인자 및 메소드 튜닝.
		
		//int res = regScreenDao.insert(vo);
		
		return "redirect:/screenManager/data_view.do";
	}


}
