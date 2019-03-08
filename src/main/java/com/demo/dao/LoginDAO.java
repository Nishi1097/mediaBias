package com.demo.dao;

import java.util.List;

import com.demo.model.LoginVO;

public interface LoginDAO {

	public List login(LoginVO loginVO);

	public List getUserByUsername(String username);

}
