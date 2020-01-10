package com.tjo.team_project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.NoticeService;
import vo.NoticeVo;

@Controller
public class Notice_Controller {
	
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("/notice/notice.do")
	public String notice_List(Model model) {
		List<NoticeVo> noticeList = noticeService.notice_selectList();
		
		model.addAttribute("noticeList", noticeList);
		
		return "notice/notice_page";
	}
	
	@RequestMapping("/notice/notice_view.do")
	public String notice_View(int notice_idx, Model model) {
		NoticeVo notice = noticeService.notice_selectOne(notice_idx);
		
		model.addAttribute("notice", notice);
		return "notice/notice_view";
	}
}