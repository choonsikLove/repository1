package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoticeController {
		
	@RequestMapping(value="/suggestion", method=RequestMethod.GET)
	public String suggestion() {
		
		return "notice/suggestion";
	}
	
	
	@RequestMapping(value="/notice_list", method=RequestMethod.GET)
	public String notice_list() {
		
		return "notice/notice_list";
	}
	
	@RequestMapping(value="/notice_list1", method=RequestMethod.GET)
	public String notice_list1() {
		
		return "notice/notice_list1";
	}
}
