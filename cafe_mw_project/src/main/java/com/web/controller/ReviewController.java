package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReviewController {

	
	@RequestMapping(value="/review", method=RequestMethod.GET)
	public String review() {
	      
	  return "/review/review";
	}
	
	@RequestMapping(value="/review2", method=RequestMethod.GET)
	public String review2() {
	      
	  return "/review/review2";
	}
	
	@RequestMapping(value="/recipe", method=RequestMethod.GET)
	public String recipe() {
	      
	  return "/review/recipe";
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
	
	@RequestMapping(value="/recipe_detail", method=RequestMethod.GET)
	public String recipe_detail() {
	      
	  return "/review/recipe_detail";
	}

	@RequestMapping(value="/recipe_write", method=RequestMethod.GET)
	public String recipe_write() {
		
		return "/review/recipe_write";
	}

}
   
