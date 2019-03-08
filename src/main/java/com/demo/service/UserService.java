package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.UserDAO;
import com.demo.model.RegisterVO;


@Service
public class UserService {

	@Autowired
	UserDAO userDAO;
	
	@Transactional
	public List viewUser(){
		return userDAO.viewUser();
	}

	@Transactional
	public void deleteUser(RegisterVO registerVO) {
		userDAO.deleteUser(registerVO);
		
	}
}
