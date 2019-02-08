package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ComplaintController {

	@RequestMapping(value = "/complaint", method = RequestMethod.GET)
	public ModelAndView goToViewComplaint() {
		return new ModelAndView("admin/complaint");
	}
	
	
}
