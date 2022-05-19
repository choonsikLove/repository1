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
	

	/**
	 *       
	 */
	@Override
	public Object select(String pnum){
		return sqlSession.selectOne(namespace+".content", pnum);
	}
	
	
	/**
	 * 
	 */
	@Override
	public List<Object> select(int startCount, int endCount){
		Map param = new HashMap<String, String>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		return sqlSession.selectList(namespace+".select", param);
	}
	
	/**
	 *  insert
	 */
	@Override
	public int insert(Object obj) {
		System.out.println("여긴 DAO : " + obj);
		int result = 0;
		MwProductVO vo = (MwProductVO)obj;
		result = sqlSession.insert(namespace+".insert", vo);
		if(result==1) {
			String pnum = sqlSession.selectOne(namespace+".select_pnum");
			vo.setPnum(pnum);
			result = sqlSession.insert(namespace+".insert_file", vo);
			System.out.println("여긴 mapper가 처리한 결과값 result : " + result);
		}
		return result;
	}
	
	public void updateHits(String id) {}
	public int update(Object obj) {return 0;}
	public int delete(String id) {return 0;}
	public int execTotalCount() {return 0;}
	public String selectFile(String id) {return "";}


	@Override
	public int selectTotal() {
		// TODO Auto-generated method stub
		return 0;
	}
	
}

