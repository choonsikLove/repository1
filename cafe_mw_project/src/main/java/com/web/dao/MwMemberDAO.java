package com.web.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwMemberVO;

public class MwMemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.member";
	
	public int insert(Object obj) {
		MwMemberVO vo = (MwMemberVO)obj;
		return sqlSession.insert(namespace+".insert", vo);
	}
}
