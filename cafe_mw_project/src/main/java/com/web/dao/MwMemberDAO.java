package com.web.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwMemberVO;

public class MwMemberDAO implements MwObjectDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.member";

	@Override
	public int insert(Object obj) {
		MwMemberVO vo = (MwMemberVO)obj;
		return sqlSession.insert(namespace+".insert", vo);
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
	
	public int selectIdCheck(String memail) {
		return sqlSession.selectOne(namespace + ".idCheck", memail);
	}
	
	public int select(MwMemberVO vo) {
		return sqlSession.selectOne(namespace+".login",vo);
	}
}
