package com.web.service;


import java.util.List;

import com.web.vo.MwMemberVO;

public interface MwMemberService extends MwObjectService{
	int getLoginResult(MwMemberVO vo);
	int getIdCheckResult(String id);
	List<Object> getSearchListResult(int startCount, int endCount, String keyword, String option);
	int getSearchListCount(String keyword, String option);
	String getEmailCheckResult(String email);
	String getHpCheckResult(MwMemberVO vo);
	int getPassUpdateResult(MwMemberVO vo);
	int getFileUpdateResult(MwMemberVO vo);
}
