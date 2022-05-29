package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AboutController {
		
	@RequestMapping(value="about_us", method=RequestMethod.GET)
	public String about_us() {
		
		return "about/about_us";
	}


	@RequestMapping(value="recruit", method=RequestMethod.GET)
	public String recruit() {
		
		return "about/recruit";
	}

	
	@RequestMapping(value="bigmoon", method=RequestMethod.GET)
	public String bigmoon() {
		
		return "about/bigmoon";
	}
	
	
	@RequestMapping(value="littlemoon", method=RequestMethod.GET)
	public String littlemoon() {
		
		return "about/littlemoon";
	}
}
