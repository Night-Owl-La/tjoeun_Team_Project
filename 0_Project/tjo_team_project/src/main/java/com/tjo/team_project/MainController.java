package com.tjo.team_project;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import util.API_MovieData_DB;
import vo.API_MovieDataVo;

@Controller
public class MainController {
	
	@RequestMapping("/main/main.do")
	public String main(Model model) throws IOException {
	
	//�ܿ�ձ�2
	API_MovieDataVo vo = API_MovieData_DB.selectMovieOne("F48331");
	
	
	model.addAttribute("movieVo", vo);
	
	//�ܿ�ձ�
	API_MovieDataVo vo1 = API_MovieData_DB.selectMovieOne("F32196");
	
	model.addAttribute("movieVo1", vo1);
	
	// ----------------------------------------------------------------
	List<API_MovieDataVo> list = API_MovieData_DB.searchMovieList("title", "");
	
	API_MovieDataVo new_Vo_1 = new API_MovieDataVo();
	API_MovieDataVo new_Vo_2 = new API_MovieDataVo();
	API_MovieDataVo new_Vo_3 = new API_MovieDataVo();
	API_MovieDataVo new_Vo_4 = new API_MovieDataVo();
	API_MovieDataVo new_Vo_5 = new API_MovieDataVo();
	API_MovieDataVo new_Vo_6 = new API_MovieDataVo();
	int i=0;
	
	for (API_MovieDataVo api_MovieDataVo : list) {
		i+=1;
		switch (i) {
		case 1:
			new_Vo_1 = api_MovieDataVo;
			break;
		case 2:
			new_Vo_2 = api_MovieDataVo;
			if(new_Vo_2.getPosterList().get(0)==null||new_Vo_2.getPosterList().get(0)=="") {
				System.out.println(new_Vo_2+" : 포스터가 없음");
			}
			break;
		case 3:
			new_Vo_3 = api_MovieDataVo;
			break;
		case 4:
			new_Vo_4 = api_MovieDataVo;
			break;
		case 5:
			new_Vo_5 = api_MovieDataVo;
			break;
		case 6:
			new_Vo_6 = api_MovieDataVo;

		default:
			break;
		}
	}
	
	model.addAttribute("new_Vo_1", new_Vo_1);
	model.addAttribute("new_Vo_2", new_Vo_2);
	model.addAttribute("new_Vo_3", new_Vo_3);
	model.addAttribute("new_Vo_4", new_Vo_4);
	model.addAttribute("new_Vo_5", new_Vo_5);
	model.addAttribute("new_Vo_5", new_Vo_6);
	
	model.addAttribute("list", list);
	// ------------------------------------------------------------------
	
	
		return "main/main";
	}
	
	@RequestMapping("/main/sub.do")
	public String sub(Model model) throws IOException {
		
		
		return "main/sub";
	}

}
