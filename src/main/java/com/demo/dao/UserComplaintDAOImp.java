package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.ComplaintVO;
import com.demo.model.LoginVO;

@Repository
public class UserComplaintDAOImp implements UserComplaintDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	public void insertUserComplaint(ComplaintVO complaintVO) {
		
		Session session = sessionFactory.getCurrentSession();
		complaintVO.setStatus("active");
		session.save(complaintVO);
		
	}

	public List getComplaintByUser(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from ComplaintVO where status = :currentStatus and fromId = '"+loginVO.getLoginId()+"'");
		q.setParameter("currentStatus", "active");
		List complaintList = q.list();
		return complaintList;
	}
}
