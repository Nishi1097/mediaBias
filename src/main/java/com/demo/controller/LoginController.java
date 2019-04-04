package com.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.LoginVO;
import com.demo.service.LoginService;
import com.demo.util.BaseMethods;

@Controller
public class LoginController {
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "recoverPasswordStep1",method = RequestMethod.GET)
	public ModelAndView goToRecoverPassword(){
		
		return new ModelAndView("admin/recoverPassword");
	}
	
	@RequestMapping(value = "recoverPasswordStep2", method = RequestMethod.GET)
	public ModelAndView goToEditPassword(@RequestParam("email") String username, LoginVO loginVO, HttpSession httpSession){
		System.out.println("USERNAME>>>>>>>"+username);
		loginVO.setUsername(username);
		httpSession.setAttribute("username", username);
		
		List usernameList = this.loginService.getUserByUsername(username);
		if(usernameList!=null && !usernameList.isEmpty()){
			int OTP=BaseMethods.generateOTP(4);
			System.out.println("OTP>>>>>"+OTP);
			String subject="otp";
			String content="otp:"+OTP;
			BaseMethods.sendMail(username,subject, content);
			httpSession.setAttribute("generatedOTP",OTP);
			return new ModelAndView("admin/editPassword");
		}
		else
		{
			return new ModelAndView("redirect:/");	
		}  		
	}
	
	@RequestMapping(value = "recoverPasswordStep3", method = RequestMethod.POST)
	public ModelAndView goToIndex(@RequestParam("password") String password,LoginVO loginVO, HttpSession httpSession){
		String username = (String)httpSession.getAttribute("username");
		loginVO.setUsername(username);
		loginVO.setPassword(password);
		this.loginService.updatePassword(loginVO);
		return new ModelAndView("redirect:/");
	}
}
