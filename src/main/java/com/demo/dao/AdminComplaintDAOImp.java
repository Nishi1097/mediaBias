package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.ComplaintVO;

@Repository
public class AdminComplaintDAOImp implements AdminComplaintDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	public void deleteComplaint(ComplaintVO complaintVO) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("update ComplaintVO set status = :deleteStatus where complaintId ='"+ complaintVO.getComplaintId()+"'");
		q.setParameter("deleteStatus", "deactive");
		q.executeUpdate();
	}

	public List displayComplaint() {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplaintVO where status = :activeStatus");
		q.setParameter("activeStatus", "active");
		List complaintList = q.list();
		return complaintList;
	}

	public void updateComplaint(ComplaintVO complaintVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("update ComplaintVO set replyDescription = '"+complaintVO.getReplyDescription()+"',replyDate = '"+complaintVO.getReplyDate()+"',complaintStatus = '"+complaintVO.getComplaintStatus()+"' where complaintId = '"+complaintVO.getComplaintId()+"'");
		q.executeUpdate();
	}
	
	
	
}
