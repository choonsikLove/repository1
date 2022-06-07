package com.web.service;

import java.util.List;

public interface MwObjectService {
	int getInsertResult(Object obj);
	List<Object> getListResult(int startCount, int endCount);
	Object getContentResult(String id);
	int getListCount();
	int getUpdateResult(Object obj);
	int getDeleteResult(String id);
}
