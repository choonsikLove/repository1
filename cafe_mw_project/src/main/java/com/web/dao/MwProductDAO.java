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
		int result = 0;
		MwProductVO vo = (MwProductVO)obj;
		result = sqlSession.insert(namespace+".insert", vo);
		
		if(result==1) {
			String pnum = sqlSession.selectOne(namespace+".select_pnum");
			vo.setPnum(pnum);
			
			result = sqlSession.insert(namespace+".insert_files", vo);
		}
		
		return result;
	}
	
	public int update(Object obj) {
		int result = 0 ;
		MwProductVO vo = (MwProductVO)obj;
		result = sqlSession.update(namespace + ".update", vo);
		
		if(result == 1 && vo.getFiles().length != 1) {
			//¿ÖÂ°¼­,,,
			Map map = new HashMap<String, String>();
			map.put("pfile1", vo.getPfiles().get(0));
			map.put("pfile2", vo.getPfiles().get(1));
			map.put("pfile3", vo.getPfiles().get(2));
			map.put("pfile4", vo.getPfiles().get(3));
			map.put("pfile5", vo.getPfiles().get(4));
			map.put("psfile1", vo.getPsfiles().get(0));
			map.put("psfile2", vo.getPsfiles().get(1));
			map.put("psfile3", vo.getPsfiles().get(2));
			map.put("psfile4", vo.getPsfiles().get(3));
			map.put("psfile5", vo.getPsfiles().get(4));
			map.put("pnum", vo.getPnum());
			
			result = sqlSession.update(namespace + ".update_files", map);
		}
		
		return result;
	}
	
	public int delete(String pnum) {
		return sqlSession.delete(namespace + ".delete", pnum);
	}
	
	public void updateHits(String id) {}
	public int execTotalCount() {return 0;}
	public String selectFile(String id) {return "";}


	@Override
	public int selectTotal() {
		System.out.println("4. DAO/selectTotal");
	return sqlSession.selectOne(namespace+".count");
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