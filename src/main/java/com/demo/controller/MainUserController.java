package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainUserController {

	
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public ModelAndView goToUserIndex(){
		return new ModelAndView("user/index");
	} 
}
