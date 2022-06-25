package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwReviewVO;

public class MwReviewDAO implements MwObjectDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.review";

	@Override
	public int insert(Object obj) {
		MwReviewVO vo = (MwReviewVO)obj;
		return sqlSession.insert(namespace+".insert", vo);
	}

	@Override
	public int selectTotal() {
		return sqlSession.selectOne(namespace+".count");
	}

	public int selectTotal(String option) {
		return sqlSession.selectOne(namespace+".countCategory");
	}
	
	@Override
	public List<Object> select(int startCount, int endCount) {
		Map param = new HashMap<Integer, Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		return sqlSession.selectList(namespace+".list", param);
	}

	public List<Object> select(int startCount, int endCount, String option) {
		Map param = new HashMap<Integer, Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		return sqlSession.selectList(namespace+".listCategory", param);
	}

	@Override
	public Object select(String id) {
		return null;
	}

	@Override
	public int update(Object obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		return 0;
	}

	@Override
	public int selectSearchTotal(String keyword, String option) {
		return 0;
	}

	@Override
	public List<Object> selectSearch(int startCount, int endCount, String keyword, String option) {
		return null;
	}

}
