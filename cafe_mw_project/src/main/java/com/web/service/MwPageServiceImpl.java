package com.web.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

public class MwPageServiceImpl {
	
	@Autowired
	private MwMemberServiceImpl memberService;

	@Autowired
	private MwRecipeServiceImpl recipeService;
	
	@Autowired
	private MwOrderServiceImpl orderService;

	@Autowired
	private MwReviewServiceImpl reviewService;
	
	/**
	 * 페이징 처리 
	 */
	public Map<String,String> getPageResult(String rpage, String serviceName, MwObjectService service) {
		Map<String,String> param = new HashMap<String,String>();
		
		//페이징 처리 - startCount, endCount 구하기
		int startCount = 0;
		int endCount = 0;
		int pageSize = 10;	//한페이지당 게시물 수
		int reqPage = 1;	//요청페이지	
		int pageCount = 1;	//전체 페이지 수
		int dbCount = 0;    //DB에서 가져온 전체 행수
		
		if(serviceName.equals("member")) {
			memberService = (MwMemberServiceImpl)service;
			dbCount = memberService.getListCount();
			pageSize = 10;
		}else if(serviceName.equals("recipe")) {
			recipeService = (MwRecipeServiceImpl)service;
			dbCount = recipeService.getListCount();
			pageSize = 9;
		}else if(serviceName.equals("order")) {
			orderService = (MwOrderServiceImpl)service;
			dbCount = orderService.getListCount();
			pageSize = 10;
		}else if(serviceName.equals("review")) {
			dbCount = reviewService.getListCount();
			pageSize = 10;
		}
		
		//총 페이지 수 계산
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;
		}else{
			pageCount = dbCount/pageSize+1;
		}
		
		//요청 페이지 계산
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			startCount = (reqPage-1) * pageSize+1;
			endCount = reqPage *pageSize;
		}else{
			startCount = 1;
			endCount = pageSize;
		}
		
		
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		param.put("dbCount", String.valueOf(dbCount));
		param.put("pageSize", String.valueOf(pageSize));
		param.put("reqPage", String.valueOf(reqPage));
				
		return param;
	}
	
	public Map<String,String> getPageResult(String rpage, String serviceName, MwObjectService service, String keyword, String option) {
		Map<String,String> param = new HashMap<String,String>();
		
		//페이징 처리 - startCount, endCount 구하기
		int startCount = 0;
		int endCount = 0;
		int pageSize = 10;	//한페이지당 게시물 수
		int reqPage = 1;	//요청페이지	
		int pageCount = 1;	//전체 페이지 수
		int dbCount = 0;    //DB에서 가져온 전체 행수
		
		if(serviceName.equals("member")) {
			memberService = (MwMemberServiceImpl)service;
			dbCount = memberService.getSearchListCount(keyword, option);
			pageSize = 10;
		}else if(serviceName.equals("recipe")) {
			recipeService = (MwRecipeServiceImpl)service;
			dbCount = recipeService.getListCount();
			pageSize = 9;
		}
		
		//총 페이지 수 계산
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;
		}else{
			pageCount = dbCount/pageSize+1;
		}
		
		//요청 페이지 계산ㅁ으
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			startCount = (reqPage-1) * pageSize+1;
			endCount = reqPage *pageSize;
		}else{
			startCount = 1;
			endCount = pageSize;
		}
		
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		param.put("dbCount", String.valueOf(dbCount));
		param.put("pageSize", String.valueOf(pageSize));
		param.put("reqPage", String.valueOf(reqPage));
		
		return param;
	}
	
	public Map<String,String> getPageResult(String rpage, String serviceName, MwObjectService service, String option) {
		Map<String,String> param = new HashMap<String,String>();
		
		//페이징 처리 - startCount, endCount 구하기
		int startCount = 0;
		int endCount = 0;
		int pageSize = 10;	//한페이지당 게시물 수
		int reqPage = 1;	//요청페이지	
		int pageCount = 1;	//전체 페이지 수
		int dbCount = 0;    //DB에서 가져온 전체 행수
		
		if(serviceName.equals("member")) {
			memberService = (MwMemberServiceImpl)service;
			dbCount = memberService.getListCount();
			pageSize = 10;
		}else if(serviceName.equals("recipe")) {
			recipeService = (MwRecipeServiceImpl)service;
			pageSize = 9;
			if(option == "밀크티" || option == "말차" || option == "악마초코" || option == "단호박" || option == "민트초코" || option == "흑임자" || option == "쑥" || option == "그린티초코" || option == "자몽샤워" || option == "리얼딸기") {
				dbCount = recipeService.getListCount(option);
			}else {
				dbCount = recipeService.getSearchListCount(option);
			}
			
		}else if(serviceName.equals("review")) {
			reviewService = (MwReviewServiceImpl)service;
			pageSize = 10;
			dbCount = reviewService.getListCount(option);
		}else if(serviceName.equals("order")) {
			orderService = (MwOrderServiceImpl)service;
			pageSize = 10;
			dbCount = orderService.getListCount(option);
		}
		
		//총 페이지 수 계산
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;
		}else{
			pageCount = dbCount/pageSize+1;
		}
		
		//요청 페이지 계산ㅁ으
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			startCount = (reqPage-1) * pageSize+1;
			endCount = reqPage *pageSize;
		}else{
			startCount = 1;
			endCount = pageSize;
		}
		
		param.put("start", String.valueOf(startCount));
		param.put("end", String.valueOf(endCount));
		param.put("dbCount", String.valueOf(dbCount));
		param.put("pageSize", String.valueOf(pageSize));
		param.put("reqPage", String.valueOf(reqPage));
		
		return param;
	}
}
