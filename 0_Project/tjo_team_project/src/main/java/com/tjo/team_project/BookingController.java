package com.tjo.team_project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.BookingDao;
import dao.ScreenDao;
import vo.Screen_FullDataVo;

@Controller
public class BookingController {
	
	
	@Autowired
	BookingDao booking_dao;
	
	@Autowired
	ScreenDao screenDao;

	
	@RequestMapping("/booking/list.do")
	public String selectList(Model model) throws Exception {
		List<Screen_FullDataVo> list = screenDao.selectList_FullData();
		
		model.addAttribute("list", list);
		return "booking/booking_list";	
	}
	
	/*
	@RequestMapping("/booking/booking_one.do")
	@ResponseBody
	public MovielistVo select(int idx) {
		
		MovielistVo vo = movielist_dao.selectOne(idx);
		
		return vo;
	}
	
	*/
	
	
	@RequestMapping("/booking/select.do")
	public String select(Model model, String DOCID) {
		return "booking/booking_select";
	}
	
	@RequestMapping("/booking/selectJSONList.do")
	@ResponseBody
	public Map selectJSONList(String DOCID) {
		
		List<Screen_FullDataVo> list = screenDao.selectOne_FullData(DOCID);
		
		Map map = new HashMap();
		map.put("list", list);
		
		return map;
	}

	
}
