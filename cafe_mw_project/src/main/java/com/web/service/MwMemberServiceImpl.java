package com.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.web.dao.MwMemberDAO;
import com.web.vo.MwMemberVO;

public class MwMemberServiceImpl implements MwMemberService{

	@Autowired
	private MwMemberDAO memberDao;
	
	@Override
	public int getInsertResult(Object obj) {
		MwMemberVO vo = (MwMemberVO)obj;
		return memberDao.insert(vo);
	}

	@Override
	public List<Object> getListResult(int startCount, int endCount) {
		// TODO Auto-generated method stub
		return memberDao.select(startCount, endCount);
	}

	@Override
	public Object getContentResult(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getListCount() {
		// TODO Auto-generated method stub
		return memberDao.selectTotal();
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
	public int getDeleteResult(String id) {
		// TODO Auto-generated method stub
		return memberDao.delete(id);
	}

	@Override
	public int getLoginResult(MwMemberVO vo) {
		return memberDao.select(vo);
	}

	@Override
	public int getIdCheckResult(String memail) {
		return memberDao.selectIdCheck(memail);
	}
	

}
