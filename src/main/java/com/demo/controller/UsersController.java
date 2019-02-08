package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.LoginVO;


@Controller
public class UsersController {

	@Autowired
	
	
	@RequestMapping(value = "/viewUser", method = RequestMethod.GET)
	public ModelAndView goToViewUser() {
		return new ModelAndView("admin/viewUser");
	}
	
	
}