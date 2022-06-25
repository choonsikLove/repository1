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
		return reviewDao.selectTotal();
	}

	public int getListCount(String option) {
		return reviewDao.selectTotal(option);
	}
	
	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		return reviewDao.select(startCount, endCount);
	}

	public List<Object> getListResult(int startCount, int endCount, String option) {
		return reviewDao.select(startCount, endCount, option);
	}
	
}
