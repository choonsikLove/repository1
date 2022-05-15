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
	
	//회원!
	@RequestMapping(value="/admin/member_list", method=RequestMethod.GET)
	public String member_list() {
		return "/admin/member/member_list";
	}
	
	@RequestMapping(value="/admin/member_page", method=RequestMethod.GET)
	public String member_page() {
		return "/admin/member/member_page";
	}

	
	//상품!
	@RequestMapping(value="/admin/product_list", method=RequestMethod.GET)
	public String product_list() {
		return "/admin/product/product_list";
	}
	
	@RequestMapping(value="/admin/product_list_base", method=RequestMethod.GET)
	public String product_list_base() {
		return "/admin/product/product_list_base";
	}
	
	@RequestMapping(value="/admin/product_list_goods", method=RequestMethod.GET)
	public String product_list_goods() {
		return "/admin/product/product_list_goods";
	}
	
	@RequestMapping(value="/admin/product_list_gift", method=RequestMethod.GET)
	public String product_list_gift() {
		return "/admin/product/product_list_gift";
	}
	
	@RequestMapping(value="/admin/product_list_group_order", method=RequestMethod.GET)
	public String product_list_group_order() {
		return "/admin/product/product_list_group_order";
	}
	
	@RequestMapping(value="/admin/product_detail", method=RequestMethod.GET)
	public String product_detail() {
		return "/admin/product/product_detail";
	}

	@RequestMapping(value="/admin/product_group_order", method=RequestMethod.GET)
	public String product_group_order() {
		return "/admin/product/product_group_order";
	}
	
	@RequestMapping(value="/admin/product_write", method=RequestMethod.GET)
	public String product_write() {
		return "/admin/product/product_write";
	}
	
	
	//리뷰
	@RequestMapping(value="/admin/review_main", method=RequestMethod.GET)
	public String review_main() {
		return "/admin/review/review_main";
	}
	
	@RequestMapping(value="/admin/review", method=RequestMethod.GET)
	public String review() {
		return "/admin/review/review";
	}
	
	@RequestMapping(value="/admin/recipe", method=RequestMethod.GET)
	public String recipe() {
		return "/admin/review/recipe";
	}
	
	@RequestMapping(value="/admin/recipe_detail", method=RequestMethod.GET)
	public String recipe_detail() {
		return "/admin/review/recipe_detail";
	}
	
	//주문
	@RequestMapping(value="/admin/order_main", method=RequestMethod.GET)
	public String order_main() {
		return "/admin/order/order_main";
	}
	
	@RequestMapping(value="/admin/order", method=RequestMethod.GET)
	public String order() {
		return "/admin/order/order";
	}
}
