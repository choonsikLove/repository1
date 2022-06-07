package com.web.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.web.service.FileServiceImpl;
import com.web.service.MwMemberServiceImpl;
import com.web.service.MwOrderServiceImpl;
import com.web.service.MwProductServiceImpl;
import com.web.service.MwReviewServiceImpl;
import com.web.vo.MwMemberVO;
import com.web.vo.MwOrderVO;
import com.web.vo.MwProductVO;
import com.web.vo.MwReviewVO;

@Controller
public class MypageController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	@Autowired
	private MwProductServiceImpl productService;
	
	@Autowired
	private MwOrderServiceImpl orderService;
	
	@Autowired
	private MwReviewServiceImpl reviewService;
	
	@RequestMapping(value="/shop_mypage", method= RequestMethod.GET)
	public ModelAndView mypage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();
		String memail = (String)session.getAttribute("memail");

		MwMemberVO vo = (MwMemberVO)memberService.getContentResult(memail);
		List<MwOrderVO> list = orderService.getOrderListResult(memail);
		Map<String, ArrayList<MwOrderVO>> map = new HashMap<String, ArrayList<MwOrderVO>>();
		
		for(MwOrderVO ovo:list) {
			String oid = ovo.getOid();
			ArrayList<MwOrderVO> dlist = (ArrayList<MwOrderVO>)orderService.getOrderDetailResult(oid);
			map.put(oid, dlist);
		}
		
		mv.addObject("vo", vo);
		mv.addObject("map",map);
		mv.addObject("list", list);
		mv.setViewName("/mypage/mypage");
		return mv;
	}

	@RequestMapping(value="/shop_mypage/review_insert", method=RequestMethod.GET)
	public ModelAndView review_insert(String pnum, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String memail = (String)session.getAttribute("memail");
		
		MwProductVO vo = (MwProductVO)productService.getContent(pnum);
		
		mv.addObject("vo", vo);
		mv.addObject("memail", memail);
		mv.setViewName("/mypage/review_insert");
		
		return mv;
	}

	@RequestMapping(value="/shop_mypage/review_insert", method=RequestMethod.POST)
	public ModelAndView review_insert(MwReviewVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();

		vo = fileService.fileCheck(vo);
		
		int result = reviewService.getInsertResult(vo);
		
		if(result==1) { 
			fileService.fileSave(vo, request);
			mv.addObject("rvInsert_result", "succ");
			mv.setViewName("/mypage/mypage");
		}
		
		return mv;
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
			//���������� ȣ��
		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="mypage_member_info", method=RequestMethod.POST, produces = "application/json; charset=utf8")
	public String mypage_member_info(String email) throws Exception{
		MwMemberVO vo = (MwMemberVO)memberService.getContentResult(email);
		ObjectMapper mapper = new ObjectMapper();
		String jsonifiedVO = mapper.writeValueAsString(vo);
		
		//vo ��ü�� json���� �����.
		
		return jsonifiedVO;
	}
	
	@ResponseBody
	@RequestMapping(value="before_pass_check", method=RequestMethod.POST)
	public String before_pass_check(MwMemberVO vo) {
		int result = memberService.getLoginResult(vo);
		
		return String.valueOf(result);
	}
	
	
	@ResponseBody
	@RequestMapping(value="mypage_update_info", method=RequestMethod.POST)
	public String mypage_update_info(MwMemberVO vo) {

		int result = memberService.getUpdateResult(vo);
		
		return String.valueOf(result);
	}
	
	@RequestMapping(value="update_profile_img", method=RequestMethod.POST)
	public ModelAndView join(MwMemberVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		String oldFile = vo.getMsprofile();
		vo = fileService.fileCheck(vo);
			
		int result = memberService.getFileUpdateResult(vo);
		
		if(result==1) {
			fileService.fileSave(vo, request, oldFile);
			mv.addObject("vo", vo);
			mv.setViewName("/mypage/mypage");
		}
		
		return mv;
	}
	
	@RequestMapping(value="/shop_mypage/order_detail", method=RequestMethod.GET) 
	public ModelAndView order_detail(String oid, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		MwOrderVO ovo = orderService.getOrderContentResult(oid);//�̸��� �ʹ� ������ �ʳ�?
		List<MwOrderVO> list = orderService.getOrderDetailResult(oid);
		
		HttpSession session = request.getSession();
		String memail = (String)session.getAttribute("memail");
		MwMemberVO mvo = (MwMemberVO)memberService.getContentResult(memail);
		
		mv.addObject("ovo",ovo);
		mv.addObject("list", list);
		mv.addObject("mvo", mvo);
		mv.setViewName("/mypage/mp_order_detail");
		
		return mv; 
	}
	
	
	
}
