package com.demo.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.demo.model.GraphVO;
import com.demo.service.GraphService;

@Controller
public class GraphController {
	
	@Autowired 
	GraphService graphService; 
	
	@RequestMapping(value = "user/articleBarGraph", method = RequestMethod.GET)
	public ModelAndView goToBarGraph(@RequestParam("topicNo") int topicNo){
		
		List graphList = graphService.getGraphData(); 
	
		Iterator itr = graphList.iterator();
		List<Integer> returnArticleQuintList = new ArrayList<Integer>();
		List<Integer> returnArticleFirstPostList = new ArrayList<Integer>();
		List<Integer> returnArticleOPIndiaList = new ArrayList<Integer>();
		List<Integer> returnArticleTheWireList = new ArrayList<Integer>();
		List<Integer> returnArticleScrollList = new ArrayList<Integer>();
		List<Integer> returnArticleCatchNewsList = new ArrayList<Integer>();
		
		while(itr.hasNext()){

		   Object[] obj = (Object[]) itr.next();
		   Integer articleId = Integer.parseInt(String.valueOf(obj[0])); 
		   String articleWebsite = String.valueOf(obj[1]); 
		   String topicList = String.valueOf(obj[2]);
		   String[] topicArray = topicList.split(",");
		   		   
		   for(int counter = 0;counter < topicArray.length; counter++){
			   if( topicArray[counter].equals(Integer.toString(topicNo))&&articleWebsite.equals("quint")){
				   returnArticleQuintList.add(articleId);
			   }
			   if( topicArray[counter].equals(Integer.toString(topicNo))&&articleWebsite.equals("firstpost")){
				   returnArticleFirstPostList.add(articleId);
			   }
			   if( topicArray[counter].equals(Integer.toString(topicNo))&&articleWebsite.equals("opindia")){
				   returnArticleOPIndiaList.add(articleId);
			   }
			   if( topicArray[counter].equals(Integer.toString(topicNo))&&articleWebsite.equals("thewire")){
				   returnArticleTheWireList.add(articleId);
			   }
			   if( topicArray[counter].equals(Integer.toString(topicNo))&&articleWebsite.equals("scroll")){
				   returnArticleScrollList.add(articleId);
			   }
			   if( topicArray[counter].equals(Integer.toString(topicNo))&&articleWebsite.equals("catchnews")){
				   returnArticleCatchNewsList.add(articleId);
			   }
		   }
		}
		int quintCount = returnArticleQuintList.size();
		int firstPostCount = returnArticleFirstPostList.size();
		int oPIndiaCount = returnArticleOPIndiaList.size();
		int theWireCount = returnArticleTheWireList.size();
		int scrollCount = returnArticleScrollList.size();
		int catchNewsCount = returnArticleCatchNewsList.size();
		return new ModelAndView("user/barGraph","quint",returnArticleQuintList).addObject("firstpost",returnArticleFirstPostList).addObject("opindia",returnArticleOPIndiaList).addObject("thewire", returnArticleTheWireList).addObject("scroll", returnArticleScrollList).addObject("catchnews", returnArticleCatchNewsList).addObject("topic",topicNo);
		
	}
	
	@RequestMapping(value = "user/articleList", method = RequestMethod.GET)
	public ModelAndView getArticleList(@RequestParam("list")String articleIdList){
		String[] items = articleIdList.replaceAll("\\[", "").replaceAll("\\]", "").replaceAll("\\s", "").split(",");
		
		int[] resultsId = new int[items.length];

		for (int i = 0; i < items.length; i++){
		        resultsId[i] = Integer.parseInt(items[i]);
		    }
		
		List resultList = new ArrayList();
		for(int counter = 0;counter<resultsId.length;counter++){
			GraphVO gvo = new GraphVO();
			gvo.setArticleId(resultsId[counter]);
			List<GraphVO> result = graphService.getListOfArticles(gvo);			
			for(GraphVO gv: result){
				resultList.add(gv);
			}
		}		
		return new ModelAndView("user/articleList","articleList",resultList);
	}
	
	@RequestMapping(value = "user/wordsChart", method = RequestMethod.GET)
	public ModelAndView getArticlePolarity(@RequestParam("articleId") int articleId){
		GraphVO graphVO = new GraphVO();
		graphVO.setArticleId(articleId);
		List resultantArticle = graphService.getArticlePolarity(graphVO); 
		String [] articleWords = ((GraphVO) resultantArticle.get(0)).getArticlePolarityWordList().split(",");
		if(articleWords[0].equals("#none#")){
			return new ModelAndView("user/sorry","message","Our Model was not able to gather this data");
		}
		else{
		String [] articlePositivePolarity = ((GraphVO) resultantArticle.get(0)).getArticlePositivePolarityMeasure().split(",");
		String [] articleNegativePolarity = ((GraphVO) resultantArticle.get(0)).getArticleNegativePolarityMeasure().split(",");
		Double[] positivePolarityList = new Double[articleWords.length];
		Double[] negativePolarityList = new Double[articleWords.length];
		for(int counter = 0;counter<articleWords.length;counter++){
			double positivePolarity = Double.parseDouble(articlePositivePolarity[counter]);
			double negativePolarity = Double.parseDouble(articleNegativePolarity[counter]);
			positivePolarityList[counter] = positivePolarity;
			negativePolarityList[counter] = negativePolarity;
		}
		return new ModelAndView("user/wordsChart").addObject("articleWords", articleWords).addObject("positiveMeasure",positivePolarityList).addObject("negativeMeasure",negativePolarityList);
		}
	}
}
