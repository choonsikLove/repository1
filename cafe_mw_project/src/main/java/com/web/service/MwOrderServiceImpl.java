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
	
	@Override
	public List<MwCartVO> getSelectResult(String memail){
		return orderDao.selectCart(memail);
	}

	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		return orderDao.select(startCount, endCount);
	}

	@Override
	public Object getContentResult(String cid) {
		return orderDao.select(cid);
	}
	
	@Override
	public MwOrderVO getOrderContentResult(String oid) {
		return orderDao.selectOrderContent(oid);
	}

	@Override
	public int getListCount() {
		return orderDao.selectTotal();
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
	
	@Override
	public int getCartCheckResult(MwCartVO vo) {
		return orderDao.selectCartCheck(vo);
	}
	
	@Override
	public int getQntChangeResult(MwCartVO vo) {
		return orderDao.updateQnt(vo);
	}
	
	@Override
	public int getOrderInsertResult(MwOrderVO vo) {
		return orderDao.insertOrder(vo);
	}
	
	@Override
	public int getStockUpdateResult(String cid) {
		return orderDao.updateStock(cid);
	}
	
	@Override
	public int getInsertOrderDetailsResult(MwOrderVO vo, String cid) {
		return orderDao.insertOrderDetails(vo, cid);
	}
	
	@Override
	public String getSelectPnameResult(String pnum) {
		return orderDao.selectPname(pnum);
	}
	
	@Override
	public List<MwOrderVO> getOrderDetailResult(String oid){
		return orderDao.selectOrderDetail(oid);
	}
	
	@Override
	public List<MwOrderVO> getOrderListResult(String memail){
		return orderDao.selectOrderList(memail);
	}
}
