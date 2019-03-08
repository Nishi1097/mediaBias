package com.demo.dao;

import java.util.List;

import com.demo.model.FeedbackVO;

public interface AdminFeedbackDAO {

	public List displayFeedback();

	public void deleteFeedback(FeedbackVO feedbackVO);
	
}
