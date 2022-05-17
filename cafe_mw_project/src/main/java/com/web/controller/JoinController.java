package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwMemberServiceImpl;
import com.web.vo.MwMemberVO;

@Controller
public class JoinController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@RequestMapping(value="join", method=RequestMethod.POST)
		public ModelAndView join(MwMemberVO vo) {
			ModelAndView mv = new ModelAndView();
			
			int result = memberService.getInsertResult(vo);
			
			if(result==1) {
				mv.setViewName("index");
			}
		
			return mv;
		}
	
	@ResponseBody
	@RequestMapping(value="idCheck", method=RequestMethod.POST)
	public String idcheck(String email) {
		int result = memberService.getIdCheckResult(email);
		
		return String.valueOf(result);
	};
	
	
	
	}
	
