package com.demo.dao;

import java.util.List;

import com.demo.model.ComplaintVO;
import com.demo.model.LoginVO;

public interface UserComplaintDAO {

	public void insertUserComplaint(ComplaintVO complaintVO);

	public List getComplaintByUser(LoginVO loginVO);
	
}
