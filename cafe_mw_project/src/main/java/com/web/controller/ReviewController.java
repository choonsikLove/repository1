package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

	@RequestMapping(value="/recipe1", method=RequestMethod.GET)
	public String recipe1() {
	      
	  return "/review/recipe1";
	}
	@RequestMapping(value="/recipe2", method=RequestMethod.GET)
	public String recipe2() {
	      
	  return "/review/recipe2";
	}
	@RequestMapping(value="/recipe3", method=RequestMethod.GET)
	public String recipe3() {
	      
	  return "/review/recipe3";
	}
	@RequestMapping(value="/recipe4", method=RequestMethod.GET)
	public String recipe4() {
	      
	  return "/review/recipe4";
	}
	@RequestMapping(value="/recipe5", method=RequestMethod.GET)
	public String recipe5() {
	      
	  return "/review/recipe5";
	}
	@RequestMapping(value="/recipe6", method=RequestMethod.GET)
	public String recipe6() {
	      
	  return "/review/recipe6";
	}
	@RequestMapping(value="/recipe7", method=RequestMethod.GET)
	public String recipe7() {
	      
	  return "/review/recipe7";
	}
	@RequestMapping(value="/recipe8", method=RequestMethod.GET)
	public String recipe8() {
	      
	  return "/review/recipe8";
	}
	@RequestMapping(value="/recipe9", method=RequestMethod.GET)
	public String recipe9() {
	      
	  return "/review/recipe9";
	}
	@RequestMapping(value="/recipe10", method=RequestMethod.GET)
	public String recipe10() {
	      
	  return "/review/recipe10";
	}
	
	@RequestMapping(value="/recipe", method=RequestMethod.GET)
	public ModelAndView recipe(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		Map<String,String> param = pageService.getPageResult(rpage, "recipe", recipeService);
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		ArrayList<MwRecipeVO> list = new ArrayList();
		List<Object> olist = recipeService.getListResult(startCount, endCount);
		for(Object obj : olist) {
			list.add((MwRecipeVO)obj);
		}
				
		mv.addObject("list",list);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/review/recipe");	
		
		return mv;
	}
	
	@RequestMapping(value="/recipe_detail", method=RequestMethod.GET)
	public ModelAndView recipe_detail(String rid, String rno, String category) {
		ModelAndView mv = new ModelAndView();
		
		MwRecipeVO vo = (MwRecipeVO)recipeService.getContent(rid);
		
		mv.addObject("vo", vo);
		mv.addObject("rno", rno);
		mv.addObject("category", category);
		
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

}
   
