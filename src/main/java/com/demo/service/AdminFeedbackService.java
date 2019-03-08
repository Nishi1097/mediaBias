package com.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.demo.dao.AdminFeedbackDAO;
import com.demo.model.FeedbackVO;

@Service
public class AdminFeedbackService {

@Autowired
AdminFeedbackDAO adminFeedbackDAO;
	
@Transactional
public List displayFeedback(){
	
	return adminFeedbackDAO.displayFeedback();
	
}

@Transactional
public void deleteFeedback(FeedbackVO feedbackVO) {
	
	adminFeedbackDAO.deleteFeedback(feedbackVO);
	
}
	
}
