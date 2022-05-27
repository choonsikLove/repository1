package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MwRecipeDAO;
import com.web.vo.MwRecipeVO;

public class MwRecipeServiceImpl extends MwObjectServiceAdapter{
	
	@Autowired
	private MwRecipeDAO recipeDao;
	
	@Override
	public int getInsertResult(Object obj) {
		return recipeDao.insert(obj);
	};
	
	@Override
	public Object getContent(String rid) {
		MwRecipeVO vo = (MwRecipeVO)recipeDao.select(rid);
		MwRecipeVO vo2 = recipeDao.selectPreNextContent(rid);
		
		if(vo2.getPre_id() != null) {
			vo.setPre_id(vo2.getPre_id());
			vo.setPre_title(vo2.getPre_title());
		}
		
		if(vo2.getNext_id() != null) {
			vo.setNext_id(vo2.getNext_id());
			vo.setNext_title(vo2.getNext_title());
		}
		
		return vo;
	}
	
	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return recipeDao.selectTotal();
	}
	
	public int getListCount(String rcategory) {
		// TODO Auto-generated method stub
		return recipeDao.selectTotal(rcategory);
	}
	
	public int getSearchListCount(String keyword) {
		// TODO Auto-generated method stub
		return recipeDao.selectSearchTotal(keyword);
	}
	
	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return recipeDao.select(startCount, endCount);
	}
	
	public List<Object> getListResult(int startCount, int endCount, String rcategory) {
		// TODO Auto-generated method stub
		return recipeDao.select(startCount, endCount, rcategory);
	}
	
	public List<Object> getSearchListResult(int startCount, int endCount, String keyword) {
		// TODO Auto-generated method stub
		return recipeDao.selectSearch(startCount, endCount, keyword);
	}	

	public String getReplyInsertResult(MwRecipeVO vo) {
		return recipeDao.insertReply(vo);
	}
	
	public List<MwRecipeVO> getReplyContentResult(String rid) {
		return recipeDao.selectReplies(rid);
	}
	
	@Override
	public int getDeleteResult(String rid) {
		return recipeDao.delete(rid);
	}
}
