package com.demo.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.demo.model.RegisterVO;

@Repository
public class UserDAOImp implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}
	
	public List viewUser(){
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from RegisterVO where loginForeignKey.enabled = '"+1+"'");
		List userList = q.list();
		return userList;
	}

	@Override
	public void deleteUser(RegisterVO registerVO) {
		Session session = sessionFactory.getCurrentSession();
		Query q = session.createQuery("from RegisterVO where registerId = '"+registerVO.getRegisterId()+"'");
		RegisterVO registerVOFinal = (RegisterVO)q.list().get(0);
		q = session.createQuery("update LoginVO set enabled = :enabledStatus where loginId = '"+registerVOFinal.getLoginForeignKey().getLoginId()+"'");
		q.setParameter("enabledStatus", 0);
		q.executeUpdate();		
	}
	
}
