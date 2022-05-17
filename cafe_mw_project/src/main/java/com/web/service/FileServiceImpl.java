package com.web.service;

import java.util.UUID;

import com.web.vo.MwMemberVO;

public class FileServiceImpl {
	
	public MwMemberVO fileCheck(MwMemberVO vo) {
		UUID uuid = UUID.randomUUID();
		
		if(vo != null) {
			if(!vo.getFile().getOriginalFilename().equals("")) {
				vo.setMprofile(vo.getFile().getOriginalFilename());
				vo.setMsprofile(uuid+"_"+vo.getFile().getOriginalFilename());
			}
		}
		
		return vo;
	}
}
