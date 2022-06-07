package com.web.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MwReviewDAO;

public class MwReviewServiceImpl extends MwObjectServiceAdapter{
	
	@Autowired
	private MwReviewDAO reviewDao;
	
	@Override
	public int getInsertResult(Object obj) {
		return reviewDao.insert(obj);
	};
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return reviewDao.selectTotal();
	}
	
	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return reviewDao.select(startCount, endCount);
	}	
	
}
