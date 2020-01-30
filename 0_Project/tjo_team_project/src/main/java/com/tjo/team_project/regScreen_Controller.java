package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.RegScreenDao;
import dao.ScreenRegInfoDao;
import service.ScreenAllData;
import util.API_MovieInformation_DB;
import vo.MovieInfoVo;
import vo.RegScreenVo;
import vo.ScreenAllDataVo;
import vo.ScreenRegInfoVo;

@Controller
public class regScreen_Controller {
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	ScreenAllData screenAllData;
	
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
	
	@RequestMapping("/movieManager/regScreenList.do")
	public String regScreenList() {
		return "";
	}
	
	@RequestMapping("/movieManager/regScreenOne.do")
	public String regScreenOne(String DOCID, Model model) {
		ScreenAllDataVo vo = screenAllData.selectOne("F48331");
		// F41181
		// F32196
		
		model.addAttribute("scrRegInfoVo", vo.getScrRegInfoVo());
		model.addAttribute("scrDateVo", vo.getScrDateVo());
		model.addAttribute("scrVo", vo.getScrVo());
		model.addAttribute("theaterVo", vo.getTheaterVo());
		
		return "movieManager/regScreenView";
	}
	
	@RequestMapping("/movieManager/insert.do")
	public String movieInsert(RegScreenVo vo) {
		
		//int res = regScreenDao.insert(vo);
		
		return "redirect:movieManager/regScreenList.do";
	}

}
