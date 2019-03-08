package com.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DataSetController {
	
	@RequestMapping(value = "admin/dataSet" , method = RequestMethod.GET)
	public ModelAndView goToDataSet(){		
		return new ModelAndView("admin/dataSet");
	}

}
