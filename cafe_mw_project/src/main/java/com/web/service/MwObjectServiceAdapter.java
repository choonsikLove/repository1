package com.web.service;

import java.util.List;

public class MwObjectServiceAdapter implements MwObjectService{
	public int getInsertResult(Object obj) {
		return 0;
	}
	public List<Object> getListResult(int startCount, int endCount){
		return null;
	}
	public Object getContent(String id){
		return null;
	}
	public int getListCount(){
		return 0;
	}
	public void getUpdateHits(String id){};
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
		// TODO Auto-generated method stub
		return null;
	}
}
