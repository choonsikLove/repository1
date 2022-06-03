package com.web.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.web.dao.MwRecipeDAO;
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
			
			File file = new File(path+vo.getPmainsfile());
			vo.getPmainimage().transferTo(file);
		}
		
	}
	
	public void fileSave(MwProductVO vo, HttpServletRequest request, String old_file) throws Exception {
		if(!vo.getPmainimage().getOriginalFilename().equals("")) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			
			File file = new File(path + vo.getPmainsfile());
			vo.getPmainimage().transferTo(file);
			
			File oldFile = new File(path + old_file);
			if(oldFile.exists()) {
				oldFile.delete();
			}
			
		}
	}
	
	//상품의 서브파일들
	public MwProductVO multiFileCheck(MwProductVO vo) {		
		
		if(vo != null) {
			for(int i=0; i<5; i++) { 
				
				UUID uuid = UUID.randomUUID();	
				
				if(i < vo.getFiles().length) { 
					CommonsMultipartFile file = vo.getFiles()[i];
					
					if(!file.getOriginalFilename().equals("")) { //파일존재 하는 경우	
						vo.getPfiles().add(file.getOriginalFilename());
						vo.getPsfiles().add(uuid + "_" + file.getOriginalFilename());
					}else {
						vo.getPfiles().add("");
						vo.getPsfiles().add("");
					}
					
				} else {
					vo.getPfiles().add("");
					vo.getPsfiles().add("");
				}
			}
			
			
		}
				
				
		return vo;
	}
	
	public MwProductVO multiFileCheck2(MwProductVO vo) {		
		
		if(vo != null) {
			for(int i=0; i<5; i++) { 
				
				UUID uuid = UUID.randomUUID();	
				
				if(i < vo.getFiles().length) { 
					CommonsMultipartFile file = vo.getFiles()[i];
					
					if(!vo.getFiles()[0].isEmpty()) {
					
						if(!file.getOriginalFilename().equals("")) { //파일존재 하는 경우	
							vo.getPfiles().add(file.getOriginalFilename());
							vo.getPsfiles().add(uuid + "_" + file.getOriginalFilename());
						}
					
					}
					
				} else {
					vo.getPfiles().add("");
					vo.getPsfiles().add("");
				}
			}
			
		}
				
				
		return vo;
	}
		
	
	public void multiFileSave(MwProductVO vo, HttpServletRequest request) throws Exception{
		
		if(vo != null) {
			for(int i=0; i<vo.getFiles().length; i++) {
				CommonsMultipartFile pfile = vo.getFiles()[i]; //files 배열에 저장된 주소번지의 파일반환
			
				if(!pfile.getOriginalFilename().equals("")) {
				
					//파일저장 위치 확인
					String root_path = request.getSession().getServletContext().getRealPath("/");
					root_path += "resources\\upload\\";
					
					//파일저장
					File file = new File(root_path + vo.getPsfiles().get(i));			
					pfile.transferTo(file);
				}
			}
		}	
	}
	
	public void multiFileSave(MwProductVO vo, HttpServletRequest request, List<String> old_files) throws Exception{
		
		if(vo != null) {
			for(int i=0; i<vo.getFiles().length; i++) {
				CommonsMultipartFile pfile = vo.getFiles()[i]; //files 배열에 저장된 주소번지의 파일반환
			
				if(!pfile.getOriginalFilename().equals("")) {
				
					String root_path = request.getSession().getServletContext().getRealPath("/");
					root_path += "resources\\upload\\";
					
					//파일저장
					File file = new File(root_path + vo.getPsfiles().get(i));			
					pfile.transferTo(file);
					
					File oldFile = new File(root_path + old_files.get(i));
					if(oldFile.exists()) {
						oldFile.delete();
					}
				}
			}
		}
	}
	
	public void deleteFile(MwProductVO vo, HttpServletRequest request, String old_file) throws Exception{
		if(old_file != null) {
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			
			File file = new File(path + old_file);
			if(file.exists()) {
				file.delete();
			}
		}
	}
	
	public void deleteMultipleFiles(MwProductVO vo, HttpServletRequest request, List<String> old_files) {
		if(old_files != null) {
			for(String old_file : old_files) {
				String path = request.getSession().getServletContext().getRealPath("/");
				path += "resources\\upload\\";
				
				File file = new File(path + old_file);
				if(file.exists()) {
					file.delete();
				}
				
			}
		}
	}

	
	
	
	
	
	// 레시피
	
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
	
	public void multiFileSave(MwRecipeVO vo, HttpServletRequest request) throws Exception{
		
		if(vo != null) {
			for(int i=0; i<vo.getFiles().length; i++) {
				CommonsMultipartFile rfile = vo.getFiles()[i]; //files 배열에 저장된 주소번지의 파일반환
			
				if(!rfile.getOriginalFilename().equals("")) {
				
					//파일저장 위치 확인
					String path = request.getSession().getServletContext().getRealPath("/");
					path += "resources\\upload\\";
					
					//파일저장
					File file = new File(path + vo.getRsfiles().get(i));			
					rfile.transferTo(file);
				}
			}
		}	
	}
	
	public MwRecipeVO replyFileCheck(MwRecipeVO vo) {
		UUID uuid = UUID.randomUUID();
		
		if(vo != null) {
			if(!vo.getR_file().getOriginalFilename().equals("")) {
				vo.setReply_file(vo.getR_file().getOriginalFilename());
				vo.setReply_sfile(uuid+"_"+vo.getR_file().getOriginalFilename());
			}
		}
		return vo;
	}
	
	public void replyFileSave(MwRecipeVO vo, HttpServletRequest request) throws Exception {
		
		if(!vo.getR_file().getOriginalFilename().equals("")) {
			
			String path = request.getSession().getServletContext().getRealPath("/");
			path += "resources\\upload\\";
			
			File file = new File(path+vo.getReply_sfile());
			vo.getR_file().transferTo(file);
			
		}
		
	}
	
	public void deleteMultipleFiles(MwRecipeVO vo, HttpServletRequest request, List<String> old_files) {
		if(old_files != null) {
			for(String old_file : old_files) {
				String path = request.getSession().getServletContext().getRealPath("/");
				path += "resources\\upload\\";
				
				File file = new File(path + old_file);
				if(file.exists()) {
					file.delete();
				}
				
			}
		}
	}
}
