package com.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.web.service.MwOrderServiceImpl;
import com.web.vo.MwOrderVO;

@Controller
public class OrderController {
	
	@Autowired
	private MwOrderServiceImpl orderService;
	
	@RequestMapping(value="/shop_cart", method=RequestMethod.GET)
	public ModelAndView shop_cart() {
	    ModelAndView mv = new ModelAndView();
	    
	    List<MwOrderVO> list = orderService.getSelectResult();
		
	    mv.addObject("list",list);
	    mv.setViewName("/order/cart");
	    
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_insert", method=RequestMethod.POST)
	public String shop_cart_insert(MwOrderVO vo) {
		
		int result = orderService.getInsertResult(vo);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_check", method=RequestMethod.POST)
	public String shop_cart_insert(String c_pnum) {
		
		int result = orderService.getCartCheckResult(c_pnum);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/shop_cart_qnt_change", method=RequestMethod.POST)
	public String shop_cart_qnt_chng(MwOrderVO vo) {
		
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
	public ModelAndView cart_to_payment(MwOrderVO vo) {
		ModelAndView mv = new ModelAndView();
		List<MwOrderVO> vo_list = new ArrayList<MwOrderVO>();
		
		String[] cids = vo.getCids();
		for(String cid: cids) {
			vo_list.add((MwOrderVO)orderService.getContentResult(cid));
		}
		
		mv.addObject("list", vo_list);
		mv.setViewName("/order/payment");
		
		return mv;
	}

}
