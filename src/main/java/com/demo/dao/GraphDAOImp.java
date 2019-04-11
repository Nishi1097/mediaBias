package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.GraphVO;

@Repository
public class GraphDAOImp implements GraphDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	@Override
	public List getGraphData() {
		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("select articleId,articleWebsite,topicList from GraphVO");
		return q.list();
	}

	@Override
	public List getListOfArticles(GraphVO gvo) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from GraphVO where articleId = '"+gvo.getArticleId()+"'");		
		return q.list();
	}
	
}
