package com.demo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.FeedbackVO;

@Repository
public class UserFeedbackDAOImp implements UserFeedbackDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
		
	public void insertUserFeedback(FeedbackVO feedbackVO) {
		
		Session session = this.sessionFactory.getCurrentSession();
		//feedbackVO.setStatus("active");
		session.save(feedbackVO);		
	}

}
