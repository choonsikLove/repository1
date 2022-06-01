package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwOrderVO;
import com.web.vo.MwRecipeVO;

public class MwOrderDAO implements MwObjectDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.order";

	@Override
	public int insert(Object obj) {
		MwOrderVO vo = (MwOrderVO)obj;
		return sqlSession.insert(namespace + ".insert_cart", vo);
	}

	public List<MwOrderVO> select(){
		List<MwOrderVO> list = sqlSession.selectList(namespace + ".select");
		//아직은 회원 정보가 없어서 파라미터가 없어요~
		
		return list;
	}
	
	@Override
	public List<Object> select(int startCount, int endCount) {
		return null;
	}

	@Override
	public Object select(String cid) {
		return sqlSession.selectOne(namespace + ".select_item", cid);
	}

	@Override
	public int update(Object obj) {
		return 0;
	}

	@Override
	public int delete(String cid) {
		return sqlSession.delete(namespace + ".delete", cid);
	}

	@Override
	public int selectTotal() {
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

	public int selectCartCheck(String c_pnum) {
		return sqlSession.selectOne(namespace + ".select_cart", c_pnum);
	}
	
	public int updateQnt(MwOrderVO vo) {
		return sqlSession.update(namespace+".update_qnt", vo);
	}
}
