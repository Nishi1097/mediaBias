package com.demo.dao;

import java.util.List;

import com.demo.model.RegisterVO;

public interface UserDAO {

	public List viewUser();

	public void deleteUser(RegisterVO registerVO);
	
}
