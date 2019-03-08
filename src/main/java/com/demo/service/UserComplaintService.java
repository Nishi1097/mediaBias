package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.UserComplaintDAO;
import com.demo.model.ComplaintVO;
import com.demo.model.LoginVO;


@Service
public class UserComplaintService {

	@Autowired
	UserComplaintDAO userComplaintDAO;
	
	@Transactional
	public void insertUserComplaint(ComplaintVO complaintVO){
		
		userComplaintDAO.insertUserComplaint(complaintVO);
		
	}

	@Transactional
	public List getComplaintByUser(LoginVO loginVO) {
		return userComplaintDAO.getComplaintByUser(loginVO);
	}
	
}
