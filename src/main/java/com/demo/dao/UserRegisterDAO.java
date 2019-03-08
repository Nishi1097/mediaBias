package com.demo.dao;

import com.demo.model.LoginVO;
import com.demo.model.RegisterVO;

public interface UserRegisterDAO {

	public void registerUser(RegisterVO registerVO);

	public void registerLogin(LoginVO loginForeignKey);
	
}
