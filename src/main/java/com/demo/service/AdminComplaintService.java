package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.AdminComplaintDAO;
import com.demo.model.ComplaintVO;

@Service
public class AdminComplaintService {

	@Autowired
	AdminComplaintDAO adminComplaintDAO;
	
	@Transactional
	public void deleteComplaint(ComplaintVO complaintVO){
		adminComplaintDAO.deleteComplaint(complaintVO);
	}
	
	@Transactional
	public List displayComplaint(){
		return adminComplaintDAO.displayComplaint();
	}
	
	@Transactional
	public void updateComplaint(ComplaintVO complaintVO){
		adminComplaintDAO.updateComplaint(complaintVO);
	}
}
