package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.FileServiceImpl;
import com.web.service.MwPageServiceImpl;
import com.web.service.MwRecipeServiceImpl;
import com.web.vo.MwMemberVO;
import com.web.vo.MwRecipeVO;

@Controller
public class ReviewController {
	
	@Autowired
	private FileServiceImpl fileService;
	
	@Autowired
	private MwRecipeServiceImpl recipeService;
	
	@Autowired
	private MwPageServiceImpl pageService;
	
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String review() {
		
		return "/review/review";
	}
	
	@RequestMapping(value="/review2", method=RequestMethod.GET)
	public String review2() {
	      
	  return "/review/review2";
	}

	@RequestMapping(value="/recipe", method=RequestMethod.GET)
	public ModelAndView recipe(String rpage, String rcategory) {
		ModelAndView mv = new ModelAndView();
		Map<String,String> param;
		List<Object> olist;
		
		if(rcategory == null) {
			param = pageService.getPageResult(rpage, "recipe", recipeService);
		}else {
			param = pageService.getPageResult(rpage, "recipe", recipeService, rcategory);
		}
		
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		if(rcategory == null) {
			olist = recipeService.getListResult(startCount, endCount);
		}else {
			olist = recipeService.getListResult(startCount, endCount, rcategory);
		}
		
		ArrayList<MwRecipeVO> list = new ArrayList();
		for(Object obj : olist) {
			list.add((MwRecipeVO)obj);
		}
				
		mv.addObject("list",list);
		mv.addObject("rc",rcategory);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/review/recipe");	
		
		return mv;
	}
	
	@RequestMapping(value="/recipe", method=RequestMethod.POST)
	public ModelAndView recipeSerch(String rpage, String option) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String,String> param;
		List<Object> olist;
		
		param = pageService.getPageResult(rpage, "recipe", recipeService, option);
		
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		olist = recipeService.getSearchListResult(startCount, endCount, option);
		
		ArrayList<MwRecipeVO> list = new ArrayList();
		for(Object obj : olist) {
			list.add((MwRecipeVO)obj);
		}
		
		mv.addObject("list",list);
		mv.addObject("rc",option);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/review/recipe");	
		
		return mv;
	}

	@RequestMapping(value="/recipe_wish", method=RequestMethod.GET)
	public String recipe_wish() {
		
		return "/review/recipe_insert";
	}	
	
	@RequestMapping(value="/recipe_detail", method=RequestMethod.GET)
	public ModelAndView recipe_detail(String rid, String rno, String category) {
		ModelAndView mv = new ModelAndView();
		
		MwRecipeVO vo = (MwRecipeVO)recipeService.getContent(rid);
		List<MwRecipeVO> reply_list = recipeService.getReplyContentResult(rid);
		
		mv.addObject("vo", vo);
		mv.addObject("rno", rno);
		mv.addObject("category", category);
		mv.addObject("reply_list",reply_list);
		
		mv.setViewName("/review/recipe_detail");
	  return mv;
	}

	@RequestMapping(value="/recipe_insert", method=RequestMethod.GET)
	public String recipe_insert() {
		
		return "/review/recipe_insert";
	}

	@RequestMapping(value="/recipe_insert", method=RequestMethod.POST)
	public ModelAndView recipe_insert(MwRecipeVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		fileService.multiFileCheck(vo);
		
		int result = recipeService.getInsertResult(vo);
		if(result == 1) {
			fileService.multiFileSave(vo, request);
			mv.setViewName("redirect:/recipe");
		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/recipe_reply", method=RequestMethod.POST)
	public String recipe_reply(MwRecipeVO vo, HttpServletRequest request) throws Exception {
	
		vo = fileService.replyFileCheck(vo);
		
		String result = recipeService.getReplyInsertResult(vo);
		
		fileService.replyFileSave(vo, request);
		
		return result;
	}
}
   
