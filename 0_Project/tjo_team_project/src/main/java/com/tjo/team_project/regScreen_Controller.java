package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.RegScreenDao;
import util.API_MovieInformation_DB;
import vo.MovieInfoVo;
import vo.RegScreenVo;

@Controller
public class regScreen_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	RegScreenDao regScreenDao;
	
	@RequestMapping("/movieManager/movieReg.do")
	public String movieReg() {
		return "movieManager/movieReg";
	}
	
	@RequestMapping("/movieManager/listAll.do")
	public String movieListAll(Model model) throws IOException {
		String search_Key = request.getParameter("search_Key");
		String search_Value = request.getParameter("search_Value");
		
		List<MovieInfoVo> list = API_MovieInformation_DB.searchMovieList(search_Key, search_Value);
		
		model.addAttribute("list", list);
		return "movieManager/movieResult";
	}
	
	@RequestMapping("/movieManager/insert.do")
	public String movieInsert(RegScreenVo vo) {
		
		int res = regScreenDao.insert(vo);
		
		return "";
	}

}
