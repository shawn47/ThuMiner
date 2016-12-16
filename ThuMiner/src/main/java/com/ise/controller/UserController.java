package com.ise.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ise.model.User;
import com.ise.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/user/loginView")
	public String loginView(){
		return "index";
	}
	
	@RequestMapping("/user/registerView")
	public String registerView(){
		return "register";
	}
	
	@RequestMapping("/user/login")
	public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String password){
		ModelAndView mav = new ModelAndView();
		User user = new User(username, password);
		User u = userService.loginCheck(user);
		if(null == u){
			mav.setViewName("main");
//			mav.addObject("errorMsg","用户名或密码有误！");
			return mav;
		}
		else{
			mav.setViewName("main");
			return new ModelAndView("redirect:/main"); 
		}
	}
	
	@RequestMapping("/user/register")
	public ModelAndView register(@RequestParam("username") String username, @RequestParam("password") String password){
		ModelAndView mav = new ModelAndView();
		User user = new User(username, password);
		if(userService.register(user)){
			mav.setViewName("main");
			return mav;
		}
		else{
			mav.setViewName("no");
			mav.addObject("errorMsg","用户名已被占用，请更换！！");
			return mav;
		}
	}
}
