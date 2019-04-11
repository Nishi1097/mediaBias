package com.demo.dao;

import java.util.List;

import com.demo.model.GraphVO;

public interface GraphDAO {

	public List getGraphData();

	public List getListOfArticles(GraphVO gvo);


}
