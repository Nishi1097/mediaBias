package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.LoginVO;

@Repository
public class LoginDAOImp implements LoginDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	public List login(LoginVO loginVO){		
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where userName like'"+loginVO.getUsername()+"'and password like '"+loginVO.getPassword()+"' and status = 'active'");
		List loginList = q.list();
		return loginList;
	}
	

	@Override
	public List getUserByUsername(String username) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where userName = '"+username+"'");		
		return q.list();
	}

	@Override
	public void updatePassword(LoginVO loginVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("update LoginVO set password = '"+loginVO.getPassword()+"' where username = '"+loginVO.getUsername()+"'");
		q.executeUpdate();
	}

}
