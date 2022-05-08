package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	@RequestMapping(value="/admin/member_list", method=RequestMethod.GET)
	public String member_list() {
		return "/admin/member/member_list";
	}
	
	@RequestMapping(value="/admin/member_page", method=RequestMethod.GET)
	public String member_page() {
		return "/admin/member/member_page";
	}

	@RequestMapping(value="/admin/product_list", method=RequestMethod.GET)
	public String product_list() {
		return "/admin/product/product_list";
	}
}
