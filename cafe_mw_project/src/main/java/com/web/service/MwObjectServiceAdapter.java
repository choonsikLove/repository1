package com.web.service;

import java.util.List;

public class MwObjectServiceAdapter implements MwObjectService{
	
	public int getInsertResult(Object obj) {
		return 0;
	}
	
	public List<Object> getListResult(int startCount, int endCount){
		return null;
	}
	
	public Object getContent(String id){//¾Æ·¡ °Å¶û ¹¹°¡ ´Ù¸¥ °ÅÀÓ?
		return null;
	}
	
	public int getListCount(){
		return 0;
	}
	
	public int getUpdateResult(Object obj){
		return 0;
	}
	
	public int getDeleteResult(String id){
		return 0;
	}
	
	public String getFilename(String id){
		return "";
	}
	
	@Override
	public Object getContentResult(String id) {
		return null;
	}
}
