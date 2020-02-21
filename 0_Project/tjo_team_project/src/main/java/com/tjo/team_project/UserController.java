package com.tjo.team_project;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.KakaoUserDao;
import dao.UserDao;
import vo.KakaoUserVo;
import vo.UserVo;

@Controller
public class UserController {

	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;

	@Autowired
	UserDao user_dao;
	
	@Autowired
	KakaoUserDao kakaouser_dao;
	
	

	public void setUser_dao(UserDao user_dao) {
		this.user_dao = user_dao;
	}

	public void setKakaouser_dao(KakaoUserDao kakaouser_dao) {
		this.kakaouser_dao = kakaouser_dao;
	}

	
	
	
	// 카카오 로그인
	@RequestMapping( value = "/user/kakao_login.do", method = RequestMethod.GET)
	@ResponseBody
	public String kakao_login(KakaoUserVo vo, Model model) {
		
		//System.out.println(vo.getKakao_user_email());
		
		// 1. kakaouser_dao.selectOne(email) // List<KakaoUserVo>
		
		KakaoUserVo kakao_user = kakaouser_dao.selectOne(vo.getKakao_user_email());
		
	
		if(kakao_user!=null){ // 이미 있을 때
			session.setAttribute("kakao_user", kakao_user);
			// session -> kakaouser
		} 
		else{ // 없을 때
			model.addAttribute("reason", "use_id");
			// return "reason", "id 가 없음"
		}
		
		return "redirect:list.do";
		  
	}
	
     	/*
	  	if(session == null){
	  		response.sendRedirect(requset.getContextPath()+"/user/login_form.jsp);
	  	}
	    */
		
			
		// 3. 있으면-> 이미 있으니까 패스->(insert) -> login 성공
		// 3-1 없으면 -> 가입할꺼냐고 물어본다. 
		// 3-2 yes-> insert(vo) -> login 처리.
		// 3-2.1 -> no -> 로그인 실패.
		
		//kakaouser_dao.insert(vo);

	
	
	
	@RequestMapping("/user/login_form.do")
	public String login_form() {
		
		return "user/user_login_form";
	}
	

	
	@RequestMapping("/user/login.do")
	public String login(String user_id, String user_pwd, String url,Model model) {
	
	UserVo user = user_dao.selectOne(user_id);
	
	if(user==null) {
		model.addAttribute("reason", "fail_id");

		return "redirect:login_form.do";
	}
	
	if(user.getUser_pwd().equals(user_pwd)==false) {	
		model.addAttribute("reason", "fail_pwd");
		
		return "redirect:login_form.do";
	}
	
	session.setAttribute("user", user);
	
	//이전페이지 정보가 있으면....
	if(!url.isEmpty())
		return "redirect:" + url;
		
	return "redirect:../user/list.do";
	
	}
		
	
	@RequestMapping("/user/logout.do")
	public String logout(String url) {
		
	session.removeAttribute("user");
	
	if(!url.isEmpty()) 
		return "redirect:" + url;
	
	
		return "redirect:../user/list.do";
	}
	
	
	@RequestMapping("/user/list.do")
	public String list(Model model) {
		
	List<UserVo> list = user_dao.selectList();
		
	model.addAttribute("list",list);
	
	return "user/user_list";
	
	}
	
	@RequestMapping("/user/modify.do")
	public String modify(UserVo vo) {
	
		String user_ip = request.getRemoteAddr();
		
		vo.setUser_ip(user_ip);
		
		int res = user_dao.update(vo);
		
		return "redirect:list.do";
	}
	

	@RequestMapping("/user/modify_form.do")
	public String modify_form(int user_idx, Model model) {
		
		UserVo vo = user_dao.selectOne(user_idx);
		
		model.addAttribute("vo", vo);
		
		return "user/user_modify_form";
	}
	
	@RequestMapping("/user/insert.do")
	public String insert(UserVo vo) {
		
		String user_ip = request.getRemoteAddr();
		vo.setUser_ip(user_ip);
				
		int res = user_dao.insert(vo);
		
		
		return "redirect:list.do";
	}
	
	@RequestMapping("/user/insert_form.do")
	public String insert_form() {
		
		
		return "user/user_insert_form";
	}
	
	@RequestMapping("/user/delete.do")
	public String delete(int user_idx) {
						 	
		
		int res = user_dao.delete(user_idx);
		
		return "redirect:list.do";
	}
	
	
	@RequestMapping(value = "/user/check_id.do", produces="text/plain;charset=utf-8;")
	@ResponseBody
	public String check_id(String user_id){
				
		UserVo vo = user_dao.selectOne(user_id);
		
		boolean result = false;
		//id를 사용하는 회원정보가 없다
		if(vo==null) result=true;
		
		String jsonStr = String.format("{\"result\":%b}", result);
		
		return jsonStr;
	}
	
	
}
