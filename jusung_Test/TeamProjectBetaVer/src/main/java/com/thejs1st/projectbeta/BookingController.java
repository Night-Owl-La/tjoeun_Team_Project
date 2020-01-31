package com.thejs1st.projectbeta;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.BookingDao;
import dao.MovielistDao;
import service.BookingService;
import util.API_MovieInformation_DB;
import vo.BookingVo;
import vo.MovieInfoVo;
import vo.MovielistVo;

@Controller
public class BookingController {
	
	@Autowired
	BookingService booking_service;
	
	@Autowired
	MovielistDao movielist_dao;
	
	@Autowired
	BookingDao booking_dao;
	
	
	@RequestMapping("/booking/list.do")
	public String selectList(Model model) throws Exception {
		
		List<MovielistVo> list = movielist_dao.selectList();
		
		//TODO 알림
		MovieInfoVo movieVo = API_MovieInformation_DB.selectMovieOne("F48331");
		
		System.out.println(movieVo.getTitle());
		
		model.addAttribute("list", list);
		
		return "booking/booking_list";
		
	}
	
	@RequestMapping("/booking/booking_one.do")
	@ResponseBody
	public MovielistVo select(int idx) {
		MovielistVo vo = movielist_dao.selectOne(idx);
		return vo;
	}
	
	
	@RequestMapping("/booking/select.do")
	public String select(Model model, HttpServletRequest request, String docid) {
		BookingVo vo = booking_dao.selectOne(docid);
		model.addAttribute("vo", vo);
		return "booking/booking_select";
	}

}
