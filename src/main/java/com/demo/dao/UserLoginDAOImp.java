package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserLoginDAOImp implements UserLoginDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	@Override
	public List getTopicWords() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from TopicWordsVO");
		List topicList = q.list();
		return topicList;
	}

}
