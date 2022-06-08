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

	public int getListCount(String option) {
		// TODO Auto-generated method stub
		return reviewDao.selectTotal(option);
	}
	
	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return reviewDao.select(startCount, endCount);
	}

	public List<Object> getListResult(int startCount, int endCount, String option) {
		// TODO Auto-generated method stub
		return reviewDao.select(startCount, endCount, option);
	}
	
}
