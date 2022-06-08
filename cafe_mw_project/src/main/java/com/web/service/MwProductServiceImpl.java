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
		return productDao.select(pnum); 
	}
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return productDao.selectTotal();
	}
	
	public int getListCount(String pcategory) {
		// TODO Auto-generated method stub
		return productDao.selectTotal(pcategory);
	}
	
	/*
	public int getSearchListCount(String keyword) {
		// TODO Auto-generated method stub
		return productDao.selectSearchTotal(keyword);
	*/
	
	@Override 
	public List<Object> getListResult(int startCount, int endCount){
		return productDao.select(startCount, endCount); 
	}
	   
	public List<Object> getListResult(int startCount, int endCount, String pcategory) {
		return productDao.select(startCount, endCount, pcategory);
	}

    
    /*
    public List<Object> getSearchListResult(int startCount, int endCount, String keyword) {
		// TODO Auto-generated method stub
		return productDao.selectSearch(startCount, endCount, keyword);
	}	
	*/

	  
	@Override 
	public int getInsertResult(Object obj) {
		int result = productDao.insert(obj);
		
		return result;
	}
	
	@Override
	public int getUpdateResult(Object obj){
		MwProductVO vo = (MwProductVO)obj;
		int result = productDao.update(vo);
		
		return result;
	}
	
	@Override
	public int getDeleteResult(String pnum){
		return productDao.delete(pnum);
	}
	
}
