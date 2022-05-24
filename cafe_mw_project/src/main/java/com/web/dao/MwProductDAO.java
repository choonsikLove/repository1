package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwMemberVO;
import com.web.vo.MwProductVO;


public class MwProductDAO implements MwObjectDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.product";
	
	@Override
	public Object select(String pnum){
		return sqlSession.selectOne(namespace+".content", pnum);
	}
	
	@Override
	public List<Object> select(int startCount, int endCount){
		Map param = new HashMap<String, String>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		return sqlSession.selectList(namespace+".select", param);
	}
	
	@Override
	public int insert(Object obj) {
		/*
		System.out.println("���� DAO : " + obj);
		int result = 0;
		MwProductVO vo = (MwProductVO)obj;
		result = sqlSession.insert(namespace+".insert", vo);
		if(result==1) {
			String pnum = sqlSession.selectOne(namespace+".select_pnum");
			vo.setPnum(pnum);
			result = sqlSession.insert(namespace+".insert_file", vo);
			System.out.println("���� mapper�� ó���� ����� result : " + result);
		}
		return result;
		*/
		
		MwProductVO vo = (MwProductVO)obj;
		return sqlSession.insert(namespace + ".insert", vo);
	}
	
	public void updateHits(String id) {}
	public int update(Object obj) {return 0;}
	public int delete(String id) {return 0;}
	public int execTotalCount() {return 0;}
	public String selectFile(String id) {return "";}


	@Override
	   public int selectTotal() {
	      System.out.println("4. DAO/selectTotal");
	      return sqlSession.selectOne(namespace+".count");
	   }

	   @Override
	   public int selectSearchTotal(String keyword, String option) {
	      // TODO Auto-generated method stub
	      return 0;
	   }

	   @Override
	   public List<Object> selectSearch(int startCount, int endCount, String keyword, String option) {
	      // TODO Auto-generated method stub
	      return null;
	   }
	   
	}

