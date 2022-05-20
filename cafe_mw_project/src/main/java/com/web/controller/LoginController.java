package com.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwMemberServiceImpl;
import com.web.vo.MwMemberVO;

@Controller
public class LoginController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public ModelAndView login(MwMemberVO vo, HttpServletRequest request){
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		int result = memberService.getLoginResult(vo);
		
		if(result == 1) {
			session.setAttribute("memail", vo.getMemail());
			mv.addObject("vo", vo);
			mv.addObject("login_result", "succ");
			mv.setViewName("index");
			
		} else {
			mv.addObject("login_result", "fail");
			mv.setViewName("index");
		}
		
		return mv;
	}

	@RequestMapping(value="logout", method= RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		
		session.invalidate();
		mv.addObject("logout_result", "succ");
		mv.setViewName("index");		
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="emailCheck", method=RequestMethod.POST)
	public String emailCheck(String email) {
		String resultMail = memberService.getEmailCheckResult(email);

        return resultMail; 
	}
	
	

	@ResponseBody
	@RequestMapping(value="hpCheck", method=RequestMethod.POST)
	public String hpCheck(MwMemberVO vo) {
		String resultMail = memberService.getHpCheckResult(vo);
		
        return resultMail; 
	}
	
	@ResponseBody
	@RequestMapping(value="updatePass", method=RequestMethod.POST)
	public String updatePass(MwMemberVO vo) {
		int result = memberService.getPassUpdateResult(vo);
		
		return String.valueOf(result);
	}
	
}
