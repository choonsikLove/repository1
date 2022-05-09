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
	
	@RequestMapping(value="/recipe", method=RequestMethod.GET)
	public String recipe() {
	      
	  return "/review/recipe";
	}
	
	@RequestMapping(value="/recipe_detail", method=RequestMethod.GET)
	public String recipe_detail() {
	      
	  return "/review/recipe_detail";
	}

}
   
