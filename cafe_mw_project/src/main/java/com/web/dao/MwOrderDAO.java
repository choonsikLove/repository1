package com.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.web.vo.MwCartVO;
import com.web.vo.MwOrderVO;
import com.web.vo.MwRecipeVO;

public class MwOrderDAO implements MwObjectDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	private String namespace = "mapper.order";

	@Override
	public int insert(Object obj) {
		MwCartVO vo = (MwCartVO)obj;
		return sqlSession.insert(namespace + ".insert_cart", vo);
	}

	public List<MwCartVO> selectCart(String memail){
		return sqlSession.selectList(namespace + ".select_cart", memail);
	}
	
	
	@Override
	public List<Object> select(int startCount, int endCount) {
		Map param = new HashMap<Integer, Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		return sqlSession.selectList(namespace + ".list", param);
	}

	@Override
	public Object select(String cid) {
		return sqlSession.selectOne(namespace + ".select_item", cid);
	}
	
	public MwOrderVO selectOrderContent(String oid) {
		return sqlSession.selectOne(namespace + ".select_order_content", oid);
	}

	@Override
	public int update(Object obj) {
		MwOrderVO vo = (MwOrderVO)obj;
		int result = 0;
		
		if(vo.getOinvoice() != null) {
			result = sqlSession.update(namespace + ".update_invoice", vo);
		} else {
			result = sqlSession.update(namespace + ".update_order_status", vo);
		}
		
		return result;
	}

	@Override
	public int delete(String cid) {
		return sqlSession.delete(namespace + ".delete", cid);
	}

	@Override
	public int selectTotal() {
		return sqlSession.selectOne(namespace + ".count");
	}

	@Override
	public int selectSearchTotal(String keyword, String option) {
		return 0;
	}

	@Override
	public List<Object> selectSearch(int startCount, int endCount, String keyword, String option) {
		return null;
	}

	public int selectCartCheck(MwCartVO vo) {
		return sqlSession.selectOne(namespace + ".select_cart_count", vo);
	}
	
	public int updateQnt(MwCartVO vo) {
		return sqlSession.update(namespace+".update_qnt", vo);
	}
	
	public int insertOrder(MwOrderVO vo) {
		int result = sqlSession.insert(namespace + ".insert_order", vo);
		
		if(result == 1) {
			String oid = sqlSession.selectOne(namespace + ".select_oid");
			vo.setOid(oid);
		}
		
		return result;
	}
	
	public int updateStock(String cid) {
		return sqlSession.update(namespace+".update_stock", cid);
	}
	
	public int insertOrderDetails(MwOrderVO vo, String cid) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("cid", cid);
		map.put("oid", vo.getOid());
		
		int result = sqlSession.insert(namespace + ".insert_order_details", map); 
		
		
		return result;
	}
	
	public String selectPname(String pnum) {
		return sqlSession.selectOne(namespace + ".select_pname", pnum);
	}
	
	public List<MwOrderVO> selectOrderDetail(String oid){
		return sqlSession.selectList(namespace+".select_order_details", oid);
	}
	
	public List<MwOrderVO> selectOrderList(String memail){
		return sqlSession.selectList(namespace + ".select_order_list", memail);
	}
	
	public int deleteInvoice(String oid) {
		return sqlSession.delete(namespace+ ".delete_invoice" ,oid);
	}
	
}
