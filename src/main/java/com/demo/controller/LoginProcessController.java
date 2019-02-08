//currently not in use

package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.LoginVO;
import com.demo.service.LoginService;

@Controller
public class LoginProcessController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public ModelAndView loginProcess(LoginVO loginVO){
		List loginlist = loginService.login(loginVO);
		if(!loginlist.isEmpty()){
			
			return new ModelAndView("admin/index","loginVO",(LoginVO)loginlist.get(0));			
		}
		else
			return new ModelAndView("admin/login","loginVO",new LoginVO()).addObject("message","Wrong Username or Password!!");
	}

}
