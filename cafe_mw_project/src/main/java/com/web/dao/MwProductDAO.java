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
	public int selectTotal() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".count");
	}

	public int selectTotal(String pcategory) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(namespace+".countCategory", pcategory);
	}
	
	
	
	@Override
	public List<Object> select(int startCount, int endCount){
		Map param = new HashMap<Integer, Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		return sqlSession.selectList(namespace+".list", param);
	}
	
	  
	   public List<Object> select(int startCount, int endCount, String pcategory) {
	      Map param = new HashMap<Integer, Object>();
	      param.put("start", startCount);
	      param.put("end", endCount);
	      param.put("pcategory", pcategory);
	      return sqlSession.selectList(namespace+".listCategory", param);
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
		
		if(result == 1 && !vo.getFiles()[0].isEmpty()) {
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
	
	@Override
	public int delete(String pnum) {
		return sqlSession.delete(namespace + ".delete", pnum);
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