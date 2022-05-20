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
		return sqlSession.selectOne(namespace+".content", id);
	}

	@Override
	public int update(Object obj) {
		MwMemberVO vo = (MwMemberVO)obj;
		return sqlSession.update(namespace+".update", vo);
	}

	@Override
	public int delete(String id) {
		return sqlSession.delete(namespace+".delete", id);
	}

	@Override
	public int selectTotal() {
		return sqlSession.selectOne(namespace+".count");
	}
	
	public int selectIdCheck(String memail) {
		return sqlSession.selectOne(namespace + ".idCheck", memail);
	}
	
	public int select(MwMemberVO vo) {
		return sqlSession.selectOne(namespace+".login",vo);
	}
	public String selectEmailCheck(String memail) {
		return sqlSession.selectOne(namespace + ".emailCheck", memail);
	}
	
	public String selectHpCheck(MwMemberVO vo) {
		return sqlSession.selectOne(namespace + ".hpCheck", vo);
	}
	
	public int updatePass(MwMemberVO vo) {
		return sqlSession.update(namespace + ".updatePass", vo);
	}
	
	public int updateFile(MwMemberVO vo) {
		return sqlSession.update(namespace + ".updateFile", vo);
	}
}
