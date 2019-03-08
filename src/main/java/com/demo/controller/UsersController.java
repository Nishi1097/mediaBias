package com.demo.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.RegisterVO;
import com.demo.service.UserService;


@Controller
public class UsersController {
	
	@Autowired
	UserService userService;

	@RequestMapping(value = "admin/viewUser", method = RequestMethod.GET)
	public ModelAndView goToViewUser() {
		List userList = userService.viewUser(); 
		return new ModelAndView("admin/viewUser","userList",userList);
	}
	
	@RequestMapping(value = "admin/deleteUser", method = RequestMethod.GET)
	public ModelAndView deleteAndViewUser(@RequestParam("userId") int userId){
		RegisterVO registerVO = new RegisterVO();
		registerVO.setRegisterId(userId);
		userService.deleteUser(registerVO);
		List userList = userService.viewUser();
		return new ModelAndView("admin/viewUser","userList",userList);
	}
	
	
}
