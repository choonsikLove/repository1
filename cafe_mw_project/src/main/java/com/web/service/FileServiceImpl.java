package com.web.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

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
	
	public void fileSave(MwMemberVO vo, HttpServletRequest request) throws Exception {
		
		if(!vo.getFile().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getMsprofile());
			vo.getFile().transferTo(file);
		}
		
	}
}
