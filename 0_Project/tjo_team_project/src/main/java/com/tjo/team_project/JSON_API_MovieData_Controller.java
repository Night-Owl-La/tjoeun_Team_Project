package com.tjo.team_project;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import util.API_MovieData_DB;
import vo.API_MovieDataVo;

@Controller
public class JSON_API_MovieData_Controller {
	
	@RequestMapping(value = "/api/movie/{docid}", method = RequestMethod.GET)
	@ResponseBody
	public Map selectMovieOne(@PathVariable("docid") String docid) throws IOException {
		API_MovieDataVo vo = API_MovieData_DB.selectMovieOne(docid);
		Map map = new HashMap();
		
		map.put("result", vo);
		return map;
	}

}
