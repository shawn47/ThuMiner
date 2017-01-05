package com.ise.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CasesController {
	@RequestMapping("/cases")
	public ModelAndView loginView(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("cases"); 
		
		return mav;
	}
	
	@RequestMapping("/queryCasesData")
	public void getMapData(HttpServletRequest request, HttpServletResponse response) throws IOException {
		/**
		 *  Example for json
		 *  Use JSONObject to build json
		 */
		
		JSONObject json=new JSONObject();
	    JSONArray jsonMembers = new JSONArray();
	    
	    JSONObject case1 = new JSONObject();
	    case1.put("name", "zhangfan");
	    case1.put("desc", "asdf");
	    case1.put("timestamp", "2007-06-12");
	    jsonMembers.put(case1);
	  
	    JSONObject case2 = new JSONObject();
	    case2.put("name", "zf");
	    case2.put("desc", "qwer");
	    case2.put("email","8223939@qq.com");
	    jsonMembers.put(case2);
	    
	    json.put("users", jsonMembers);

	    response.getWriter().print(json.toString()); 
	}
}
