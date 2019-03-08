package com.demo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.ComplaintVO;
import com.demo.model.LoginVO;
import com.demo.service.LoginService;
import com.demo.service.UserComplaintService;
import com.demo.util.BaseMethods;

@Controller
public class UserComplaintController {

	@Autowired
	UserComplaintService userComplaintService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "user/userComplaint", method = RequestMethod.GET)
	public ModelAndView goToUserFeedback(){		
		return new ModelAndView("user/userComplaint","flagComplaintSubmitted","0").addObject("complaintVO",new ComplaintVO());
	}
	@RequestMapping(value = "user/userComplaintEntry", method = RequestMethod.POST)
	public ModelAndView insertUserFeedback(@ModelAttribute ComplaintVO complaintVO){
		
		String user = BaseMethods.getuser();
		LoginVO loginVO = new LoginVO();
		loginVO = (LoginVO)loginService.getUserByUsername(user).get(0);
		Date dateTime = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("dd-MM-yyyy");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("HH:mm:ss");
		complaintVO.setComplaintDate(dateFormatter.format(dateTime));
		complaintVO.setComplaintTime(timeFormatter.format(dateTime));
		complaintVO.setComplaintStatus("PENDING");
		complaintVO.setFromId(loginVO);
		userComplaintService.insertUserComplaint(complaintVO);
		return new ModelAndView("user/userComplaint","flagComplaintSubmitted","1").addObject("complaintVO",new ComplaintVO());
		
	}
	
	@RequestMapping(value = "user/userComplaintView", method = RequestMethod.GET)
	public ModelAndView viewUserComplaint(){
		String user = BaseMethods.getuser();
		LoginVO loginVO = new LoginVO();
		loginVO = (LoginVO)loginService.getUserByUsername(user).get(0);
		List complaintList = userComplaintService.getComplaintByUser(loginVO);
		return new ModelAndView("user/viewUserComplaint","complaintList",complaintList);
	}
	
}
