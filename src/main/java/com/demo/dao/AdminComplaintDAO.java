package com.demo.dao;

import java.util.List;

import com.demo.model.ComplaintVO;

public interface AdminComplaintDAO {

	public void deleteComplaint(ComplaintVO complaintVO);

	public List displayComplaint();

	public void updateComplaint(ComplaintVO complaintVO);

}
