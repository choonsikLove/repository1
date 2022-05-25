package com.web.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwRecipeVO;

public class MwRecipeDAO implements MwObjectDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.recipe";

	//상품 등록 : insert
	@Override
	public int insert(Object obj) {
		// TODO Auto-generated method stub
		int result = 0;
		MwRecipeVO vo = (MwRecipeVO)obj;

		result = sqlSession.insert(namespace+".insert", vo);
		if(result==1) {
			String rid = sqlSession.selectOne(namespace+".select_rid");
			vo.setRid(rid);
			result = sqlSession.insert(namespace+".insert_file", vo);
		}
		return result;
	}

	@Override
	public List<Object> select(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object select(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(Object obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectTotal() {
		// TODO Auto-generated method stub
		return 0;
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
