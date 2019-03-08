package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.LoginDAO;
import com.demo.model.LoginVO;

@Service
public class LoginService {
	
	@Autowired LoginDAO loginDAO;
	
	@Transactional
	public List login(LoginVO loginVO){
		
		return loginDAO.login(loginVO);
	}
	
	@Transactional
	public List getUserByUsername(String username){
		
		return loginDAO.getUserByUsername(username);
	}
}
