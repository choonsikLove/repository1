package com.web.service;

import java.util.List;

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
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return recipeDao.selectTotal();
	}
	
	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return recipeDao.select(startCount, endCount);
	}
}
