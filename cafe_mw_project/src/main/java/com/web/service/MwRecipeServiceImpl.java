package com.web.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MwRecipeDAO;

public class MwRecipeServiceImpl extends MwObjectServiceAdapter{
	
	@Autowired
	private MwRecipeDAO recipeDao;
	
	@Override
	public int getInsertResult(Object obj) {
		return recipeDao.insert(obj);
	};
	
	@Override
	public Object getContent(String rid) {
		return recipeDao.select(rid);
	}
	
}
