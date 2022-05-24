package com.web.service;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.web.vo.MwMemberVO;
import com.web.vo.MwProductVO;
import com.web.vo.MwRecipeVO;

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
	
	public void fileSave(MwMemberVO vo, HttpServletRequest request, String old_file) throws Exception {
		
		if(!vo.getFile().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			
			File file = new File(path + vo.getMsprofile());
			vo.getFile().transferTo(file);
			
			File oldFile = new File(path + old_file);
			if(oldFile.exists()) {
				oldFile.delete();
			}
			
		}
	}
	
	
	//상품
	public MwProductVO fileCheck(MwProductVO vo) {
		UUID uuid = UUID.randomUUID();
		
		if(vo != null) {
			if(!vo.getPmainimage().getOriginalFilename().equals("")) {
				vo.setPmainfile(vo.getPmainimage().getOriginalFilename());
				vo.setPmainsfile(uuid+"_"+vo.getPmainimage().getOriginalFilename());
			}
		}
		
		return vo;
	}
	
	public void fileSave(MwProductVO vo, HttpServletRequest request) throws Exception {
		
		if(!vo.getPmainimage().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			System.out.println(path);
			
			File file = new File(path+vo.getPmainsfile());
			vo.getPmainimage().transferTo(file);
		}
		
	}
	
	// 레시피
	public MwRecipeVO fileCheck(MwRecipeVO vo) {
		UUID uuid = UUID.randomUUID();
		
		if(vo != null) {
			if(!vo.getThumbnail().getOriginalFilename().equals("")) {
				vo.setRthumbnail(vo.getThumbnail().getOriginalFilename());
				vo.setRsthumbnail(uuid+"_"+vo.getThumbnail().getOriginalFilename());
			}
		}
		return vo;
	}
	
	public MwRecipeVO multiFileCheck(MwRecipeVO vo) {		

		if(vo != null) {
			for(int i=0; i<vo.getFiles().length; i++) {
				UUID uuid = UUID.randomUUID();		
				CommonsMultipartFile file = vo.getFiles()[i];
				
				if(!file.getOriginalFilename().equals("")) {
					vo.getRfiles().add(file.getOriginalFilename());
					vo.getRsfiles().add(uuid + "_" + file.getOriginalFilename());
				}else {
					vo.getRfiles().add("");
					vo.getRsfiles().add("");
				}
			}
		}
				
		return vo;
	}
	
	public void fileSave(MwRecipeVO vo, HttpServletRequest request) throws Exception {
		
		if(!vo.getThumbnail().getOriginalFilename().equals("")) {
			
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			
			File file = new File(path+vo.getRsthumbnail());
			vo.getThumbnail().transferTo(file);
		}
		
	}
	
	/*
	 * public void filesSave(MwRecipeVO vo, HttpServletRequest request) throws
	 * Exception {
	 * 
	 * if(!vo.getRfiles().getOriginalFilename().equals("")) { String path =
	 * request.getSession().getServletContext().getRealPath("/"); path +=
	 * "resources\\upload\\"; System.out.println(path);
	 * 
	 * File file = new File(path+vo.getThumbnail());
	 * vo.getThumbnail().transferTo(file); }
	 * 
	 * }
	 */
}
