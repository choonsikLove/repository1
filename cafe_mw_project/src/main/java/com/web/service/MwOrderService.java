package com.web.service;

import java.util.List;
import com.web.vo.MwCartVO;
import com.web.vo.MwOrderVO;

public interface MwOrderService extends MwObjectService{

	public List<MwCartVO> getSelectResult(String memail);
	public MwOrderVO getOrderContentResult(String oid);
	public int getCartCheckResult(MwCartVO vo);
	public int getQntChangeResult(MwCartVO vo);
	public int getOrderInsertResult(MwOrderVO vo);
	public int getStockUpdateResult(String cid);
	public int getInsertOrderDetailsResult(MwOrderVO vo, String cid);
	public String getSelectPnameResult(String pnum);
	public List<MwOrderVO> getOrderDetailResult(String oid);
	public List<MwOrderVO> getOrderListResult(String memail);
	public int getInvoiceDeleteResult(String oid);
}
