package com.web.dao;

import java.util.List;

public interface MwObjectDAO {
	int insert(Object obj);
	List<Object> select(int startCount, int endCount);
	Object select(String id); 
	int update(Object obj);
	int delete(String id);
	int selectTotal();
}
