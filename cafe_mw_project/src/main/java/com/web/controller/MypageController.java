package com.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwMemberServiceImpl;

@Controller
public class MypageController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@RequestMapping(value="/shop_mypage", method= RequestMethod.GET)
	public String mypage() {
		return "/mypage/mypage";
	}

	@RequestMapping(value="/shop_mypage/withdraw", method= RequestMethod.GET)
	public ModelAndView withdraw(HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String memail = (String)session.getAttribute("memail");
		int result = memberService.getDeleteResult(memail);
		
		if(result == 1) {
			session.invalidate();
			mv.addObject("withdraw_result", "succ");
			mv.setViewName("index");
		}else {
			mv.addObject("withdraw_result", "fail");
			mv.setViewName("index");
			//에러페이지 호출
		}
		
		return mv;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
