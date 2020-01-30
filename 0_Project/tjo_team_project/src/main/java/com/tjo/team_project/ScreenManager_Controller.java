package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.ScreenAllData;
import util.API_MovieData_DB;
import vo.API_MovieDataVo;
import vo.ScreenAllDataVo;

@Controller
public class ScreenManager_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ScreenAllData screenAllData;
	
	@RequestMapping("/screenManager/search_movie_form.do")
	public String movieReg() {
		return "screenManager/search_movie_form";
	}
	
	@RequestMapping("/screenManager/search_movie_list.do")
	public String movieListAll(Model model) throws IOException {
		String search_Key = request.getParameter("search_Key");
		String search_Value = request.getParameter("search_Value");
		
		List<API_MovieDataVo> list = API_MovieData_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("list", list);
		
		return "screenManager/search_movie_list";
	}
	
	@RequestMapping("/screenManager/screen_data_view.do")
	public String regScreenOne(String DOCID, Model model) {
		ScreenAllDataVo vo = screenAllData.selectOne("F48331");
		// F41181
		// F32196
		
		System.out.println(vo.getScrRegInfoVo().getScr_reg_title());
		System.out.println(vo.getScrVo().getScr_id());
		System.out.println(vo.getScrTicketVo().getScr_t_price());
		System.out.println(vo.getTheaterVo().getTht_location());
		System.out.println(vo.getScrSeatVo().getScr_idx());
		
		model.addAttribute("scrRegInfoVo", vo.getScrRegInfoVo());
		model.addAttribute("scrVo", vo.getScrVo());
		model.addAttribute("scrTicketVo", vo.getScrTicketVo());
		model.addAttribute("theaterVo", vo.getTheaterVo());
		model.addAttribute("scrSeatVo", vo.getScrSeatVo());
		
		return "screenManager/screen_data_view";
	}
	
	@RequestMapping("/screenManager/insert.do")
	public String movieInsert() { // TODO 전달인자 및 메소드 튜닝.
		
		//int res = regScreenDao.insert(vo);
		
		return "redirect:/screenManager/screen_data_view.do";
	}


}
