package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MwProductDAO;
import com.web.vo.MwMemberVO;
import com.web.vo.MwProductVO;

public class MwProductServiceImpl extends MwObjectServiceAdapter{
	
	 @Autowired 
	  private MwProductDAO productDao;
	 
	 
	 @Override 
	  
	  public Object getContent(String pnum){ 
		  return productDao.select(pnum); }
	
	 @Override public List<Object> getListResult(int startCount, int endCount){
	  return productDao.select(startCount, endCount); }
	  
	 @Override public int getInsertResult(Object obj) { 
		 int result = productDao.insert(obj);
		 return result;
		 }
	
}
