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
		return memberDao.select(startCount, endCount);
	}

	@Override
	public Object getContentResult(String id) {
		return memberDao.select(id);
	}

	@Override
	public int getListCount() {
		return memberDao.selectTotal();
	}

	@Override
	public List<Object> getSearchListResult(int startCount, int endCount, String keyword, String option) {
		return memberDao.selectSearch(startCount, endCount, keyword, option);
	}

	@Override
	public int getSearchListCount(String keyword, String option) {
		return memberDao.selectSearchTotal(keyword, option);
	}
	
	@Override
	public int getUpdateResult(Object obj) {
		MwMemberVO vo = (MwMemberVO)obj;
		return memberDao.update(vo);
	}

	@Override
	public int getDeleteResult(String id) {
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

	@Override
	public String getEmailCheckResult(String memail) {
		return memberDao.selectEmailCheck(memail);
	}

	@Override
	public String getHpCheckResult(MwMemberVO vo) {
		return memberDao.selectHpCheck(vo);
	}

	@Override
	public int getPassUpdateResult(MwMemberVO vo) {
		return memberDao.updatePass(vo);
	}

	@Override
	public int getFileUpdateResult(MwMemberVO vo) {
		return memberDao.updateFile(vo);
	}

}
