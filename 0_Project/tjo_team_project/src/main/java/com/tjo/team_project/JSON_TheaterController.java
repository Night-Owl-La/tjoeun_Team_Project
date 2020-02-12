package com.tjo.team_project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.TheaterDao;
import vo.TheaterVo;

@Controller
public class JSON_TheaterController {
	
	@Autowired
	TheaterDao theaterDao;
	
	//@RequestMapping(value = "/theater/list.do", produces="text/plain;charset=utf-8;")
	@RequestMapping(value="/theater/list.do", method = RequestMethod.GET )
	@ResponseBody
	public Map list() {
		List<TheaterVo> list = theaterDao.selectList();
		
		Map resultMap = new HashMap();
		resultMap.put("theaterList", list);
		return resultMap;
	}
}