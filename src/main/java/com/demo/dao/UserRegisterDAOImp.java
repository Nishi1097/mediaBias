package com.demo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.LoginVO;
import com.demo.model.RegisterVO;

@Repository
public class UserRegisterDAOImp implements UserRegisterDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}	
	
	@Override
	public void registerUser(RegisterVO registerVO) {
		Session session = sessionFactory.getCurrentSession();
		session.save(registerVO);		
	}

	@Override
	public void registerLogin(LoginVO loginForeignKey) {
		Session session = sessionFactory.getCurrentSession();
		session.save(loginForeignKey);
		
	}

}
