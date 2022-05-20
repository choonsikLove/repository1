package com.web.service;


import com.web.vo.MwMemberVO;

public interface MwMemberService extends MwObjectService{
	int getLoginResult(MwMemberVO vo);
	int getIdCheckResult(String id);
	String getEmailCheckResult(String email);
	String getHpCheckResult(MwMemberVO vo);
	int getPassUpdateResult(MwMemberVO vo);
	int getFileUpdateResult(MwMemberVO vo);
	//���� ��� mw object service�� �ִ� �޼ҵ���� ���� ���� ���� �����ŵ� ��
}
