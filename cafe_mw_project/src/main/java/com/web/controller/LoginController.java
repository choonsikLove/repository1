package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwMemberServiceImpl;
import com.web.vo.MwMemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView login(MwMemberVO vo){
		ModelAndView mv = new ModelAndView();
		
		int result = memberService.getLoginResult(vo);
		
		if(result == 1) {
			mv.addObject("vo", vo);
			mv.addObject("login_result", "succ");
			mv.setViewName("index");
		} else {
			mv.addObject("login_result", "fail");
			mv.setViewName("index");
		}
		
		return mv;
	}

}
