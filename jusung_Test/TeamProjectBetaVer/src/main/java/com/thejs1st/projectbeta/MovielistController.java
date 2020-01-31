package com.thejs1st.projectbeta;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MovielistDao;
import vo.MovielistVo;

@Controller
public class MovielistController {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MovielistDao movielist_dao;
	
	@RequestMapping("/movielist/list.do")
	public String list(Model model) {
		
		List<MovielistVo> list = movielist_dao.selectList();
		
		model.addAttribute("list", list);
		
		return "movielist/movielist_list";
	}
	
	// 선택된 영화 DB에 삽입하는 페이지 작성
	@RequestMapping("/movielist/insert_form.do")
	public String insert_form() {
		
		return "/movielist/movielist_insert_form";
		
	}
	
	@RequestMapping("/movielist/insert.do")
	public String insert(MovielistVo vo) {
		
		int res = movielist_dao.insert(vo);
		
		return "redirect:list.do";
	}
	
}
