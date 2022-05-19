package com.web.service;


import com.web.vo.MwMemberVO;

public interface MwMemberService extends MwObjectService{
	int getLoginResult(MwMemberVO vo);
	int getIdCheckResult(String id);
	int getDeleteResult(String id);
	public Object getContentResult(String id);
}
