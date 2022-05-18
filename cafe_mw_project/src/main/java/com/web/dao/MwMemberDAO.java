package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		Map param = new HashMap<Integer, Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		return sqlSession.selectList(namespace+".list", param);
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
		return sqlSession.delete(namespace+".delete", id);
	}

	@Override
	public int selectTotal() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".count");
	}
	
	public int selectIdCheck(String memail) {
		return sqlSession.selectOne(namespace + ".idCheck", memail);
	}
	
	public int select(MwMemberVO vo) {
		return sqlSession.selectOne(namespace+".login",vo);
	}
}
