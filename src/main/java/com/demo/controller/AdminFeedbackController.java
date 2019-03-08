package com.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.FeedbackVO;
import com.demo.service.AdminFeedbackService;


@Controller
public class AdminFeedbackController {

	@Autowired
	AdminFeedbackService adminFeedbackService;
	
	@RequestMapping(value = "admin/feedback", method = RequestMethod.GET)
	public ModelAndView goToViewFeedback() {
		List feedbackList = adminFeedbackService.displayFeedback();
		return new ModelAndView("admin/feedback","feedbackList",feedbackList);
	}
	
	@RequestMapping(value = "admin/deleteFeedback", method = RequestMethod.GET)
	public ModelAndView deleteAndViewFeedback(@RequestParam("id") int id){
		FeedbackVO feedbackVO = new FeedbackVO();
		feedbackVO.setFeedbackId(id);
		adminFeedbackService.deleteFeedback(feedbackVO);
		List feedbackList = adminFeedbackService.displayFeedback();
		return new ModelAndView("admin/feedback","feedbackList",feedbackList);
	}
}
