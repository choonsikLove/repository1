package com.web.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import com.web.dao.MwOrderDAO;
import com.web.vo.MwCartVO;
import com.web.vo.MwOrderVO;

public class MwOrderServiceImpl implements MwOrderService{
	
	@Autowired
	private MwOrderDAO orderDao;
	
	@Override
	public int getInsertResult(Object obj) {
		return orderDao.insert(obj);
	}
	
	public List<MwCartVO> getSelectResult(){
		return orderDao.select();
	}

	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Object getContentResult(String cid) {
		return orderDao.select(cid);
	}

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void getUpdateHits(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int getUpdateResult(Object obj) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getDeleteResult(String cid) {
		return orderDao.delete(cid);
	}
	
	public int getCartCheckResult(String c_pnum) {
		return orderDao.selectCartCheck(c_pnum);
	}
	
	public int getQntChangeResult(MwCartVO vo) {
		return orderDao.updateQnt(vo);
	}
	
	public int getOrderInsertResult(MwOrderVO vo) {//TT
		return orderDao.insertOrder(vo);
	}
	
}
