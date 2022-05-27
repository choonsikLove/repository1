package com.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

}
