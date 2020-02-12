package com.tjo.team_project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.ScreenDao;
import vo.ScreenVo;
import vo.TheaterVo;

@Controller
public class JSON_ScreenController {
	
	@Autowired
	ScreenDao screenDao;
	
	@RequestMapping(value="/screen/list_theater_idx.do", method = RequestMethod.GET )
	@ResponseBody
	public Map list(Integer theater_idx) {
		List<ScreenVo> screenList = screenDao.selectList_Screen(theater_idx);
		
		Map resultMap = new HashMap();
		resultMap.put("screenList", screenList);
		return resultMap;
	}

}
