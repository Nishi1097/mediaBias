package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.demo.dao.UserFeedbackDAO;
import com.demo.model.FeedbackVO;

@Service
public class UserFeedbackService {
	
	@Autowired
	UserFeedbackDAO userFeedbackDAO;
	
	@Transactional
	public void insertUserFeedback(FeedbackVO feedbackVO){
		
		userFeedbackDAO.insertUserFeedback(feedbackVO);
		
	}
	
	

}
