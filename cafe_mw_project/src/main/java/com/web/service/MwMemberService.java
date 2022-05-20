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
	//여기 없어도 mw object service에 있는 메소드들은 여기 굳이 쓰지 않으셔도 됨
}
