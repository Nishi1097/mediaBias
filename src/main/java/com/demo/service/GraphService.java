package com.demo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.dao.GraphDAO;
import com.demo.model.GraphVO;

@Service
public class GraphService {
	
	@Autowired
	GraphDAO graphDAO;
	
	@Transactional
	public List getGraphData() {
		return graphDAO.getGraphData();
	}

	@Transactional
	public List getListOfArticles(GraphVO gvo) {
		return graphDAO.getListOfArticles(gvo);
	}

	@Transactional
	public List getArticlePolarity(GraphVO graphVO) {
		return graphDAO.getListOfArticles(graphVO);
	}

}
