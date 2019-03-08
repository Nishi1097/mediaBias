package com.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.LoginVO;
import com.demo.model.RegisterVO;
import com.demo.service.UserRegisterService;

@Controller
public class UserRegisterController {

	@Autowired
	UserRegisterService userRegisterService;
	
	@RequestMapping(value = "register", method = RequestMethod.GET)
	public ModelAndView goToRegister() {
		return new ModelAndView("register","registerObject",new RegisterVO());
	}
	
	@RequestMapping(value = "registerProcess", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute RegisterVO registerVO){
		String username = registerVO.getLoginForeignKey().getUsername();
		String password = registerVO.getLoginForeignKey().getPassword();		
		LoginVO loginForeignKey = new LoginVO();
		loginForeignKey.setEnabled(1);
		loginForeignKey.setPassword(password);
		loginForeignKey.setUsername(username);
		loginForeignKey.setRole("ROLE_USER");
		registerVO.setLoginForeignKey(loginForeignKey);
		userRegisterService.registerLogin(loginForeignKey);
		userRegisterService.registerUser(registerVO);
		return new ModelAndView("login");
	}
	
}
