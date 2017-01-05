package com.ise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StatisticsController {
	@RequestMapping("/statistics")
	public ModelAndView loginView(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("statistics");
		
		
		return mav;
	}
}
