package com.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "article_table")
public class GraphVO {
	
	@Id
	@Column(name = "articleId")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int articleId;
	
	@Column(name = "articleTitle")
	private String articleTitle;
	
	@Column(name = "articleTotalWordCount")
	private String articleTotalWordCount;
	
	@Column(name = "negativeWordCount")
	private String negativeWordCount;
	
	@Column(name = "positiveWordCount")
	private String positiveWordCount;
	
	@Column(name = "articlePolarityWordList")
	private String articlePolarityWordList;
	
	@Column(name = "articleNegativePolarityMeasure")
	private String articleNegativePolarityMeasure;
	
	@Column(name = "articlePositivePolarityMeasure")
	private String articlePositivePolarityMeasure;
	
	@Column(name = "articleWebsite")
	private String articleWebsite;
	
	@Column(name = "topicList")
	private String topicList;

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public String getArticleTotalWordCount() {
		return articleTotalWordCount;
	}

	public void setArticleTotalWordCount(String articleTotalWordCount) {
		this.articleTotalWordCount = articleTotalWordCount;
	}

	public String getNegativeWordCount() {
		return negativeWordCount;
	}

	public void setNegativeWordCount(String negativeWordCount) {
		this.negativeWordCount = negativeWordCount;
	}

	public String getPositiveWordCount() {
		return positiveWordCount;
	}

	public void setPositiveWordCount(String positiveWordCount) {
		this.positiveWordCount = positiveWordCount;
	}

	public String getArticlePolarityWordList() {
		return articlePolarityWordList;
	}

	public void setArticlePolarityWordList(String articlePolarityWordList) {
		this.articlePolarityWordList = articlePolarityWordList;
	}

	public String getArticleNegativePolarityMeasure() {
		return articleNegativePolarityMeasure;
	}

	public void setArticleNegativePolarityMeasure(String articleNegativePolarityMeasure) {
		this.articleNegativePolarityMeasure = articleNegativePolarityMeasure;
	}

	public String getArticlePositivePolarityMeasure() {
		return articlePositivePolarityMeasure;
	}

	public void setArticlePositivePolarityMeasure(String articlePositivePolarityMeasure) {
		this.articlePositivePolarityMeasure = articlePositivePolarityMeasure;
	}

	public String getArticleWebsite() {
		return articleWebsite;
	}

	public void setArticleWebsite(String articleWebsite) {
		this.articleWebsite = articleWebsite;
	}

	public String getTopicList() {
		return topicList;
	}

	public void setTopicList(String topicList) {
		this.topicList = topicList;
	}
	
	

}
