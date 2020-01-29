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
	public String notice_List(Integer page, String selectPage, String search_option, String search_text, Model model) {
		
		Map selectOptionMap = new HashMap();
		
		// # URL build.
		StringBuilder url = new StringBuilder(request.getContextPath());
		url.append("/notice/notice.do");
		url.append("?selectPage=notice");
		url.append("&search_option="+ (search_option == null ? "" : search_option));
		url.append("&search_text="+ (search_text == null ? "" : search_text));
		
		// 검색 조건 추가.
		selectOptionMap.put("search_option", search_option);
		selectOptionMap.put("search_text", search_text);
		
		// # 조회수 카운트 리셋.
		session.removeAttribute("show");
		
		// # page 처리.
		if (page != null) nowPage = page;
		
		int start = (nowPage - 1) * MyConstant.Board.BLOCKLIST + 1;
		int end = start + MyConstant.Board.BLOCKLIST - 1;
		
		// 검색조건 추가.
		selectOptionMap.put("start", start);
		selectOptionMap.put("end", end);
		
		int noticeRowTotal = noticeDao.notice_selectRowTotal(selectOptionMap);
		System.out.println(noticeRowTotal);
		String pageMenu = Paging.getPaging(url.toString(), nowPage, noticeRowTotal, MyConstant.Board.BLOCKLIST, MyConstant.Board.BLOCKPAGE);
		
		model.addAttribute("pageMenu", pageMenu);
		
		// # 페이지 블럭 리스트 불러오기.
		List<NoticeVo> noticeList = noticeDao.notice_selectList(selectOptionMap);
		
		// # 데이터 바인딩.
		model.addAttribute("noticeList", noticeList);
		model.addAttribute("selectPage", selectPage);

		return "customer_center/notice/notice";
	}
	
	@RequestMapping("/notice/notice_view.do")
	public String notice_View(int notice_idx, Integer page, String selectPage, Model model) {
		
		NoticeVo noticeVo = noticeDao.notice_selectOne(notice_idx);
		
		// # 새로고침 조회수 조작 방지.
		if(session.getAttribute("show")==null) {
			session.setAttribute("show", true);
			int res = noticeDao.notice_UpdateViewCount(noticeVo);
		}
		
		model.addAttribute("noticeVo", noticeVo);
		model.addAttribute("page", page);
		model.addAttribute("selectPage", selectPage);
		
		return "customer_center/notice/notice_view";
	}
	
	@RequestMapping("/notice/notice_insert_form.do")
	public String notice_Insert_Form() { return "customer_center/notice/notice_insert_form"; }
	
	@RequestMapping("/notice/notice_insert.do")
	public String notice_Insert(NoticeVo vo, Integer page, String selectPage, Model model) {
		
		int res = noticeDao.notice_Insert(vo);
		
		model.addAttribute("page", page);
		model.addAttribute("selectPage", selectPage);

		return "redirect:/notice/notice.do";
	}
	
	@RequestMapping("/notice/notice_update_form.do")
	public String notice_Update_Form(int notice_idx, Model model) {
		NoticeVo vo = noticeDao.notice_selectOne(notice_idx);
		model.addAttribute("noticeVo", vo);
		return "customer_center/notice/notice_modify_form"; 
	}
	
	@RequestMapping("/notice/notice_update.do")
	public String notice_Update(NoticeVo vo, Integer page, String selectPage, Model model) {
		
		int res = noticeDao.notice_Update(vo);
		
		model.addAttribute("page", page);
		model.addAttribute("selectPage", selectPage);
		return "redirect:/notice/notice.do"; 
	}
	
	@RequestMapping("/notice/notice_delete.do")
	public String notice_Delete(int notice_idx, Integer page, String selectPage, Model model) {
		
		int res = noticeDao.notice_Delete(notice_idx);
		
		model.addAttribute("page", page);
		model.addAttribute("selectPage", selectPage);
		
		return "redirect:/notice/notice.do";
	}

}
