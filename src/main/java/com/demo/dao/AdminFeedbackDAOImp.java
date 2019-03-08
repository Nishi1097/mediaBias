package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.FeedbackVO;

@Repository
public class AdminFeedbackDAOImp implements AdminFeedbackDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	
	public List displayFeedback() {
		
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from FeedbackVO where status = 'active'");
		List feedbackList = q.list();
		
		return feedbackList;
	}


	public void deleteFeedback(FeedbackVO feedbackVO) {
		
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("update FeedbackVO set status = :deleteStatus where feedbackId = '"+feedbackVO.getFeedbackId()+"'");
		q.setParameter("deleteStatus", "deactive");
		q.executeUpdate();
		
	}

}
