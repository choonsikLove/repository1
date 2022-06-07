package com.web.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwMemberServiceImpl;
import com.web.service.MwOrderServiceImpl;
import com.web.vo.MwCartVO;
import com.web.vo.MwMemberVO;
import com.web.vo.MwOrderVO;

@Controller
public class OrderController {
	
	@Autowired
	private MwOrderServiceImpl orderService;
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@RequestMapping(value="/shop_cart", method=RequestMethod.GET)
	public ModelAndView shop_cart(HttpServletRequest request) {
	    ModelAndView mv = new ModelAndView();
	    
	    HttpSession session = request.getSession();
	    String memail = (String)session.getAttribute("memail");
	    
	   	List<MwCartVO> list = orderService.getSelectResult(memail);
	   	
	   	mv.addObject("list",list);
	    mv.setViewName("/order/cart");
	    
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_insert", method=RequestMethod.POST)
	public String shop_cart_insert(MwCartVO vo) {
		
		int result = orderService.getInsertResult(vo);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_check", method=RequestMethod.POST)
	public String shop_cart_check(MwCartVO vo) {
		
		int result = orderService.getCartCheckResult(vo);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_qnt_change", method=RequestMethod.POST)
	public String shop_cart_qnt_chng(MwCartVO vo) {
		
		int result = orderService.getQntChangeResult(vo);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_delete", method=RequestMethod.POST)
	public String shop_cart_delete(@RequestParam(value="cid_list[]") List<String> cid_list) {
		
		int result = 0;
		
		for(String cid : cid_list) {
			result = orderService.getDeleteResult(cid);
		}
		
		return String.valueOf(result);
	}

	@RequestMapping(value="/shop_payment", method=RequestMethod.GET)
	public String payment() {
	      
		return "/order/payment";
	}
	
	@RequestMapping(value="/cart_to_payment", method=RequestMethod.POST)
	public ModelAndView cart_to_payment(MwCartVO vo, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		List<MwCartVO> vo_list = new ArrayList<MwCartVO>();
		
		String[] cids = vo.getCids();
		for(String cid: cids) {
			vo_list.add((MwCartVO)orderService.getContentResult(cid));
		}
		
		HttpSession session = request.getSession();
		String memail = (String)session.getAttribute("memail");
		
		if(memail != null) {
			MwMemberVO mvo = (MwMemberVO)memberService.getContentResult(memail);
			mv.addObject("mvo", mvo);
		}
		
		mv.addObject("list", vo_list);
		mv.setViewName("/order/payment");
		
		return mv;
	}
	
	@RequestMapping(value="/order_payment", method=RequestMethod.POST)
	public ModelAndView order_payment(MwOrderVO vo) {
		ModelAndView mv = new ModelAndView();
		int result = orderService.getOrderInsertResult(vo);
	
		if(result == 1) {
		
			for(String ocid : vo.getOcid()) {
				orderService.getStockUpdateResult(ocid);
				orderService.getInsertOrderDetailsResult(vo, ocid);
			}
			
			for(String ocid : vo.getOcid()) {
				orderService.getDeleteResult(ocid);
			}
			
			mv.addObject("order_result", "succ");
			mv.setViewName("/index");
		}
		
		return mv;
	}

}
