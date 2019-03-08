package com.demo.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "feedback")
public class FeedbackVO {
	
	@Id
	@Column(name = "feedbackId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int feedbackId;
	
	@Column(name = "feedback")
	private String feedback;
		
	public int getFeedbackId() {
		return feedbackId;
	}

	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name = "status")
	private String status;
	
	@Column(name = "star")
	private String star;

	public String getStar() {
		return star;
	}

	public void setStar(String star) {
		this.star = star;
	}
	
	@Column(name = "feedbackTitle")
	private String feedbackTitle;

	public String getFeedbackTitle() {
		return feedbackTitle;
	}

	public void setFeedbackTitle(String feedbackTitle) {
		this.feedbackTitle = feedbackTitle;
	}
	
	@Column(name = "feedbackDate")
	private String feedbackDate;
	
	@Column(name = "feedbackTime")
	private String feedbackTime;
	
	@ManyToOne
	private LoginVO feedbackLoginVO;

	public String getFeedbackDate() {
		return feedbackDate;
	}

	public void setFeedbackDate(String feedbackDate) {
		this.feedbackDate = feedbackDate;
	}

	public String getFeedbackTime() {
		return feedbackTime;
	}

	public void setFeedbackTime(String feedbackTime) {
		this.feedbackTime = feedbackTime;
	}

	public LoginVO getFeedbackLoginVO() {
		return feedbackLoginVO;
	}

	public void setFeedbackLoginVO(LoginVO feedbackLoginVO) {
		this.feedbackLoginVO = feedbackLoginVO;
	}
}
