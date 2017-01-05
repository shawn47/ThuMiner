package com.ise.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StatisticsController {
	@RequestMapping("/statistics")
	public ModelAndView loadView(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("statistics");
		
		
		return mav;
	}
	
	@RequestMapping("/active-cases")
	public ModelAndView loadViewActiveCases(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("active-cases");
		
		
		return mav;
	}
	
	@RequestMapping("/main2")
	public ModelAndView loadViewMain2(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main2");
		
		
		return mav;
	}
	
	@RequestMapping("/main3")
	public ModelAndView loadViewMain3(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main3");
		
		
		return mav;
	}
	
	@RequestMapping("/case-duration")
	public ModelAndView loadViewCaseDuration(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("case-duration");
		
		
		return mav;
	}
	
	@RequestMapping("/caseutilization")
	public ModelAndView loadViewCaseUtilization(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("caseutilization");
		
		
		return mav;
	}
	
	@RequestMapping("/meanactivityduration")
	public ModelAndView loadViewMeanActDuration(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meanactivityduration");
		
		
		return mav;
	}
	
	@RequestMapping("/meanwaitingtime")
	public ModelAndView loadViewMeanWaitTime(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("meanwaitingtime");
		
		
		return mav;
	}
}
