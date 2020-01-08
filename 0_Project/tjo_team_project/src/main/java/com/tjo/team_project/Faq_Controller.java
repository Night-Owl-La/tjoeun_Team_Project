package com.tjo.team_project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.FaqService;
import vo.FaqVo;

@Controller
public class Faq_Controller {
	
	@Autowired
	FaqService faqService;
	
	@RequestMapping("/faq/faq.do")
	public String faq_List(Model model) {
		List<FaqVo> faqList = faqService.faq_selectList();
		
		model.addAttribute("faqList", faqList);
		
		return "faq/faq_page";
	}
}
