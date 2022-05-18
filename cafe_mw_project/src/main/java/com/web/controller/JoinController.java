package com.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.FileServiceImpl;
import com.web.service.MwMemberServiceImpl;
import com.web.vo.MwMemberVO;

@Controller
public class JoinController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	@RequestMapping(value="join", method=RequestMethod.POST)
		public ModelAndView join(MwMemberVO vo, HttpServletRequest request) throws Exception {
			ModelAndView mv = new ModelAndView();
			
			vo = fileService.fileCheck(vo);
			
			int result = memberService.getInsertResult(vo);
			
			if(result==1) {
				fileService.fileSave(vo, request);
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
	
