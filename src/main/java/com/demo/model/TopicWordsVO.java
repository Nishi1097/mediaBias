package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "topicwordtable")
public class TopicWordsVO {
	
	@Id
	@Column(name = "topicId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int topicId;
	public int getTopicId() {
		return topicId;
	}
	public void setTopicId(int topicId) {
		this.topicId = topicId;
	}
	@Column(name = "topicNumber")
	private String topicNumber;
	
	@Column(name = "topicWords")
	private String topicWords;
	public String getTopicNumber() {
		return topicNumber;
	}
	public void setTopicNumber(String topicNumber) {
		this.topicNumber = topicNumber;
	}
	public String getTopicWords() {
		return topicWords;
	}
	public void setTopicWords(String topicWords) {
		this.topicWords = topicWords;
	}
	
}
