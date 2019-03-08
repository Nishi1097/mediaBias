package com.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.UserRegisterDAO;
import com.demo.model.LoginVO;
import com.demo.model.RegisterVO;

@Service
public class UserRegisterService {

	@Autowired
	UserRegisterDAO userRegisterDAO;
	
	@Transactional
	public void registerUser(RegisterVO registerVO){
		userRegisterDAO.registerUser(registerVO);
	}

	@Transactional
	public void registerLogin(LoginVO loginForeignKey) {
		userRegisterDAO.registerLogin(loginForeignKey);
		
	}
	
}
