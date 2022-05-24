package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.FileServiceImpl;
import com.web.service.MwMemberServiceImpl;
import com.web.service.MwPageServiceImpl;
import com.web.service.MwProductServiceImpl;
import com.web.vo.MwMemberVO;
import com.web.vo.MwProductVO;

@Controller
public class AdminController {
	
	@Autowired
	private MwMemberServiceImpl memberService;
	
	@Autowired
	private MwPageServiceImpl pageService;
	
	@Autowired
	private MwProductServiceImpl productService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	//ȸ��!
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
	
	@RequestMapping(value="/admin/member_list", method=RequestMethod.POST)
	public ModelAndView member_list(String rpage, String keyword, String option) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		Map<String,String> param = pageService.getPageResult(rpage, "member", memberService, keyword, option);
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		ArrayList<MwMemberVO> list = new ArrayList<MwMemberVO>();
		List<Object> olist = memberService.getSearchListResult(startCount, endCount, keyword, option);
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
	public ModelAndView member_page(String memail, String rpage) {
		ModelAndView mv = new ModelAndView();
		MwMemberVO vo = (MwMemberVO)memberService.getContentResult(memail);
		
		mv.addObject("vo", vo);
		
		mv.setViewName("/admin/member/member_page");	
		
		return mv;
	}

	
	
	
	
	
	
	//��ǰ!
	   //��ǰ ����Ʈ
	   @RequestMapping(value="/admin/product_list", method=RequestMethod.GET)
	   public ModelAndView product_list(String rpage) {
	      ModelAndView mv = new ModelAndView();
	         
	      Map<String,String> param = pageService.getPageResult(rpage, "product", productService);
	      int startCount = Integer.parseInt(param.get("start"));
	      int endCount = Integer.parseInt(param.get("end"));
	      
	      
	      List<Object> olist = productService.getListResult(startCount, endCount);
	      ArrayList<MwProductVO> list = new ArrayList<MwProductVO>();
	      for(Object obj : olist) {
	         list.add((MwProductVO)obj);
	      }
	            
	      mv.addObject("list",list);
	      mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
	      mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
	      mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));   
	      
	      mv.setViewName("/admin/product/product_list");
	      
	      return mv;
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
	
	@RequestMapping(value="/admin/product_write", method=RequestMethod.POST)
	public ModelAndView product_write(MwProductVO vo, HttpServletRequest request) throws Exception { 
		ModelAndView mv = new ModelAndView();
		
		vo = fileService.fileCheck(vo);
		int result = productService.getInsertResult(vo);
		
		if(result == 1) {
			fileService.fileSave(vo, request);
			mv.setViewName("redirect:/admin/product_list");
		}
		
		return mv; 
	}
	 
	 

		
	 
	 
	 //����
	 
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
	 
	//�ֹ�
	 
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
