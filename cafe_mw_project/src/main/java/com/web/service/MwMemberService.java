package com.web.service;

import com.web.vo.MwMemberVO;

public interface MwMemberService extends MwObjectService{
	int getLoginResult(MwMemberVO vo);
	int getIdCheckResult(String id);
}
