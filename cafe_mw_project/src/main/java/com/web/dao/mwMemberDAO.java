package com.web.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.mwMemberVO;

public class mwMemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	private String namespace = "mapper.member";
	
	public int insert(Object obj) {
		mwMemberVO vo = (mwMemberVO)obj;
		return sqlSession.insert(namespace+".insert", vo);
	}
}
