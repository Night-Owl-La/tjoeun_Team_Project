package com.tjo.team_project;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.NoticeDao;
import util.MyConstant;
import util.Paging;
import vo.NoticeVo;

@Controller
public class Notice_Controller {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	NoticeDao noticeDao;
	
	int nowPage = 1; // 현재 페이지.
	
	@RequestMapping("/notice/notice.do")
	public String notice_List(Integer page, String selectPage, Model model) {
		
		//조회수 카운트 리셋.
		session.removeAttribute("show");
		
		// page 처리.
		if (page != null) nowPage = page;
		
		int start = (nowPage - 1) * MyConstant.Board.BLOCKLIST + 1;
		int end = start + MyConstant.Board.BLOCKLIST - 1;
		
		Map selectOptionMap = new HashMap();
		
		selectOptionMap.put("start", start);
		selectOptionMap.put("end", end);
		
		int noticeRowTotal = noticeDao.notice_selectRowTotal();
		String pageMenu = Paging.getPaging(request.getContextPath()+"/customer_center/customer_center.do?selectPage=notice", nowPage, noticeRowTotal, MyConstant.Board.BLOCKLIST, MyConstant.Board.BLOCKPAGE);
		
		model.addAttribute("pageMenu", pageMenu);
		
		// 페이지 블럭리스트 불러오기.
		List<NoticeVo> noticeList = noticeDao.notice_selectList(selectOptionMap);
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("selectPage", selectPage);

		return "customer_center/notice/notice";
	}
	
	@RequestMapping("/notice/notice_view.do")
	public String notice_View(int notice_idx, Model model) {
		
		NoticeVo noticeVo = noticeDao.notice_selectOne(notice_idx);
		
		// 새로고침 조회수 조작 방지.
		if(session.getAttribute("show")==null) {
			session.setAttribute("show", true);
			int res = noticeDao.notice_UpdateViewCount(noticeVo);
		}
		

		model.addAttribute("noticeVo", noticeVo);
		return "customer_center/notice/notice_view";
	}
	
	@RequestMapping("/notice/notice_insert_form.do")
	public String notice_Insert_Form() {
		return "customer_center/notice/notice_insert_form";
	}
	
	@RequestMapping("/notice/notice_insert.do")
	public String notice_Insert(NoticeVo vo, Integer page, String selectPage, Model model) {
		int res = noticeDao.notice_Insert(vo);
		model.addAttribute("page", page);
		model.addAttribute("selectPage", selectPage);
		
		return "customer_center/customer_center";
	}
	
}
