package com.demo.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.ComplaintVO;
import com.demo.service.AdminComplaintService;


@Controller
public class AdminComplaintController {
	
	@Autowired
	AdminComplaintService adminComplaintService;
	
	@RequestMapping(value = "admin/complaint", method = RequestMethod.GET)
	public ModelAndView goToViewComplaint() {
		List complaintList = adminComplaintService.displayComplaint();		
		return new ModelAndView("admin/complaint","complaintList",complaintList);
	}
	
	@RequestMapping(value = "admin/deleteComplaint", method = RequestMethod.GET)
	public ModelAndView deleteAndViewComplaint(@RequestParam("id") int id){
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setComplaintId(id);
		adminComplaintService.deleteComplaint(complaintVO);
		List complaintList = adminComplaintService.displayComplaint();
		return new ModelAndView("admin/complaint","complaintList",complaintList);
	}
	
	@RequestMapping(value = "admin/respondToComplaint", method = RequestMethod.GET)
	public ModelAndView respondAndUpdate(@RequestParam("id") int id){
		ComplaintVO complaintVO = new ComplaintVO();
		complaintVO.setComplaintId(id);
		return new ModelAndView("admin/respondToComplaint","complaintVO",complaintVO);
		
	}
	
	@RequestMapping(value = "admin/updateComplaint", method = RequestMethod.POST)
	public ModelAndView respondUpdateAndView(@ModelAttribute ComplaintVO complaintVO,@RequestParam("id") int id){
		complaintVO.setComplaintId(id);
		Date date = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("dd-MM-yyyy");		
		complaintVO.setReplyDate(dateFormatter.format(date));
		complaintVO.setComplaintStatus("REPLIED");
		adminComplaintService.updateComplaint(complaintVO);
		List complaintList = adminComplaintService.displayComplaint();
		return new ModelAndView("admin/complaint","complaintList",complaintList);
		
	}
	
	
}
