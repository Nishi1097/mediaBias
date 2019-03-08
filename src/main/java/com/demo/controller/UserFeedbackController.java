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

import com.demo.model.FeedbackVO;
import com.demo.model.LoginVO;
import com.demo.service.AdminFeedbackService;
import com.demo.service.LoginService;
import com.demo.service.UserFeedbackService;
import com.demo.util.BaseMethods;

@Controller
public class UserFeedbackController {	
	@Autowired
	UserFeedbackService userFeedbackService;
	
	@Autowired
	LoginService loginService;
	
	@Autowired
	AdminFeedbackService adminFeedbackService;
	
	@RequestMapping(value = "user/userFeedback", method = RequestMethod.GET)
	public ModelAndView goToUserFeedback(){		
		return new ModelAndView("user/userFeedback","flagFeedbackSubmitted","0").addObject("feedbackVO",new FeedbackVO());
	}
	@RequestMapping(value = "user/userFeedbackEntry", method = RequestMethod.POST)
	public ModelAndView insertUserFeedback(@ModelAttribute FeedbackVO feedbackVO){
		
		Date dateTime =  new Date();
		SimpleDateFormat timeFormatter = new SimpleDateFormat("HH:mm:ss");
		SimpleDateFormat dateFormatter = new SimpleDateFormat("dd-MM-yyyy");
		feedbackVO.setFeedbackTime(timeFormatter.format(dateTime));	
		feedbackVO.setFeedbackDate(dateFormatter.format(dateTime));
		feedbackVO.setStatus("active");
		String username = BaseMethods.getuser();		
		LoginVO loginVO = new LoginVO();
		List userList = loginService.getUserByUsername(username);
		loginVO = (LoginVO)userList.get(0);
		feedbackVO.setFeedbackLoginVO(loginVO);
		userFeedbackService.insertUserFeedback(feedbackVO);
		return new ModelAndView("user/userFeedback","flagFeedbackSubmitted","1").addObject("feedbackVO",new FeedbackVO());
		
	}
	
	@RequestMapping(value = "user/userFeedbackView", method = RequestMethod.GET)
	public ModelAndView viewUserFeedback(){
		
		List userFeedbackList = adminFeedbackService.displayFeedback();
		return new ModelAndView("user/viewFeedback","feedbackList",userFeedbackList);
		
	}
}
