package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwMemberServiceImpl;
import com.web.service.MwPageServiceImpl;
import com.web.vo.MwMemberVO;

@Controller
public class AdminController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@Autowired
	private MwPageServiceImpl pageService;
	
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	//회원!
	@RequestMapping(value="/admin/member_list", method=RequestMethod.GET)
	public ModelAndView member_list(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		Map<String,String> param = pageService.getPageResult(rpage, "member", memberService);
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		
		ArrayList<MwMemberVO> list = new ArrayList();
		List<Object> olist = memberService.getListResult(startCount, endCount);
		for(Object obj : olist) {
			list.add((MwMemberVO)obj);
		}
				
		mv.addObject("list",list);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/admin/member/member_list");	
		
		return mv;
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
	
	@RequestMapping(value="/admin/order_detail", method=RequestMethod.GET)
	public String order_detail() {
		return "/admin/order/order_detail";
	}
	
}
