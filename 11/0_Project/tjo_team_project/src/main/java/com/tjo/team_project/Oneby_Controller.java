package com.tjo.team_project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.OnebyService;
import vo.OnebyVo;

@Controller
public class Oneby_Controller {
	
	@Autowired
	OnebyService onebyService;
	
	@RequestMapping("/oneby/oneby.do")
	public String oneby_List(int user_idx, Model model) {
		List<OnebyVo> onebyList = onebyService.oneby_selectList(user_idx);
		
		model.addAttribute("onebyList", onebyList);
		
		return "oneby/oneby_page";
	}
}
