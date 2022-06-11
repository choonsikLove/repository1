package com.web.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.web.service.MwPageServiceImpl;
import com.web.service.MwProductServiceImpl;
import com.web.service.MwRecipeServiceImpl;
import com.web.vo.MwMemberVO;
import com.web.vo.MwOrderVO;
import com.web.vo.MwProductVO;
import com.web.vo.MwRecipeVO;

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
	
	@Autowired
	private MwRecipeServiceImpl recipeService;
	
	@Autowired
	private MwOrderServiceImpl orderService;
	
	
	@RequestMapping(value="/admin", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	//회원!
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
		List<MwOrderVO> list = orderService.getOrderListResult(memail);
		
		mv.addObject("vo", vo);
		mv.addObject("list", list);
		
		mv.setViewName("/admin/member/member_page");	
		
		return mv;
	}

	
	   //상품!
		//상품 리스트
		 @RequestMapping(value="/admin/product_list", method=RequestMethod.GET)
		 public ModelAndView product_list(String rpage, String pcategory) {
		     ModelAndView mv = new ModelAndView();
		     Map<String,String> param;
		     List<Object> olist;

		     if(pcategory == null) {
		       param = pageService.getPageResult(rpage, "product", productService);
		    }else {
		       param = pageService.getPageResult(rpage, "product", productService, pcategory);
		    }

		     int startCount = Integer.parseInt(param.get("start"));
		    int endCount = Integer.parseInt(param.get("end"));

		    if(pcategory == null) {
		       olist = productService.getListResult(startCount, endCount);
		    }else {
		       olist = productService.getListResult(startCount, endCount, pcategory);
		    }

		    ArrayList<MwProductVO> list = new ArrayList();
		    for(Object obj : olist) {
		       list.add((MwProductVO)obj);
		    }

		    mv.addObject("list",list);
		    mv.addObject("pd",pcategory);
		    mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		    mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		    mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));   

		    mv.setViewName("/admin/product/product_list");   

		    return mv;
		 }
		 
	@RequestMapping(value="/admin/product_list_group_order", method=RequestMethod.GET) 
	public String product_list_group_order() { 
		return "/admin/product/product_list_group_order"; 
	}	
	
	@RequestMapping(value="/admin/product_detail", method=RequestMethod.GET)
	public ModelAndView product_detail(String pnum) {
		ModelAndView mv = new ModelAndView();
		MwProductVO vo = (MwProductVO)productService.getContent(pnum);
		
		String tagimage1 = "";
		String tagimage2 = "";
		
		if(vo.getPtagimage() != null) {
			String tagimage0 = vo.getPtagimage();
			String tagArray[] = tagimage0.split(",");

			if(tagArray.length == 2) {
				tagimage1 = tagArray[0];
				tagimage2 = tagArray[1];
			} else {
				tagimage1 = tagArray[0];
			}
		}
		
		
		mv.addObject("vo", vo);
		mv.addObject("tagimage1", tagimage1);
		mv.addObject("tagimage2", tagimage2);
		
		mv.setViewName("/admin/product/product_detail");
		
		return mv; 
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
		vo = fileService.multiFileCheck(vo);
		
		int result = productService.getInsertResult(vo);
		
		if(result == 1) {
			fileService.fileSave(vo, request);
			fileService.multiFileSave(vo, request);
			mv.setViewName("redirect:/admin/product_list");
		}
		
		return mv; 
	}
	 
	
	@RequestMapping(value="/admin/product_update", method=RequestMethod.GET)
	public ModelAndView product_update(String pnum) {
		ModelAndView mv = new ModelAndView();
		MwProductVO vo = (MwProductVO)productService.getContent(pnum);
		
		String tagimage1 = "";
		String tagimage2 = "";
		
		if(vo.getPtagimage() != null) {
			String tagimage0 = vo.getPtagimage();
			String tagArray[] = tagimage0.split(",");
			
			if(tagArray.length == 2) {
				tagimage1 = tagArray[0];
				tagimage2 = tagArray[1];
			} else {
				tagimage1 = tagArray[0];
			}
		}
		
		mv.addObject("vo", vo);
		mv.addObject("tagimage1", tagimage1);
		mv.addObject("tagimage2", tagimage2);
		mv.setViewName("/admin/product/product_update");
		
		return mv; 
	}
	
	@RequestMapping(value="/admin/product_update", method=RequestMethod.POST)
	public ModelAndView product_update(MwProductVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		String old_file = vo.getPmainsfile();
		List<String> old_files = new ArrayList<String>();
		old_files.add(vo.getPsfile1());
		old_files.add(vo.getPsfile2());
		old_files.add(vo.getPsfile3());
		old_files.add(vo.getPsfile4());
		old_files.add(vo.getPsfile5());
		
		vo = fileService.fileCheck(vo);
		vo = fileService.multiFileCheck2(vo);
		
		int result = productService.getUpdateResult(vo);
		
		
		if(result == 1) {
			fileService.fileSave(vo, request, old_file);
			fileService.multiFileSave(vo, request, old_files);
			mv.setViewName("redirect:/admin/product_detail?pnum="+vo.getPnum());
		}
		
		return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/product_delete", method=RequestMethod.POST)
	public String product_delete(MwProductVO vo, HttpServletRequest request) throws Exception {
		String old_file = vo.getPmainsfile();
		List<String> old_files = new ArrayList<String>();
		old_files.add(vo.getPsfile1());
		old_files.add(vo.getPsfile2());
		old_files.add(vo.getPsfile3());
		old_files.add(vo.getPsfile4());
		old_files.add(vo.getPsfile5());
		
		int result = productService.getDeleteResult(vo.getPnum());
		
		if(result == 1) {
			fileService.deleteFile(vo, request, old_file);
			fileService.deleteMultipleFiles(vo, request, old_files);
			System.out.println("삭제 처리");
		}
		
		return String.valueOf(result);
	}

		
	 
	 

		
	 
	 
	 //리뷰
	 
	@RequestMapping(value="/admin/review_main", method=RequestMethod.GET) 
	public String review_main() { 
		return "/admin/review/review_main"; 
	}
	 
	@RequestMapping(value="/admin/review", method=RequestMethod.GET) 
	public String review() { 
		return "/admin/review/review"; 
	}
	 
	@RequestMapping(value="/admin/recipe", method=RequestMethod.GET) 
	public ModelAndView recipe(String rpage, String rcategory) {
		ModelAndView mv = new ModelAndView();
		Map<String,String> param;
		List<Object> olist;
		
		if(rcategory == null) {
			param = pageService.getPageResult(rpage, "recipe", recipeService);
		}else {
			param = pageService.getPageResult(rpage, "recipe", recipeService, rcategory);
		}
		
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		if(rcategory == null) {
			olist = recipeService.getListResult(startCount, endCount);
		}else {
			olist = recipeService.getListResult(startCount, endCount, rcategory);
		}
		
		ArrayList<MwRecipeVO> list = new ArrayList();
		for(Object obj : olist) {
			list.add((MwRecipeVO)obj);
		}
				
		mv.addObject("list",list);
		mv.addObject("rc",rcategory);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/admin/review/recipe");	
		
		return mv;
	}
	
	@RequestMapping(value="/admin/recipe", method=RequestMethod.POST)
	public ModelAndView recipeSerch(String rpage, String option) throws Exception {
		ModelAndView mv = new ModelAndView();
		Map<String,String> param;
		List<Object> olist;
		
		param = pageService.getPageResult(rpage, "recipe", recipeService, option);
		
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		olist = recipeService.getSearchListResult(startCount, endCount, option);
		
		ArrayList<MwRecipeVO> list = new ArrayList();
		for(Object obj : olist) {
			list.add((MwRecipeVO)obj);
		}
		
		mv.addObject("list",list);
		mv.addObject("rc",option);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/admin/review/recipe");	
		
		return mv;
	}
	 
	@RequestMapping(value="/admin/recipe_detail", method=RequestMethod.GET)
	public ModelAndView recipe_detail(String rid) {
	      ModelAndView mv = new ModelAndView();
	      
	      MwRecipeVO vo = (MwRecipeVO)recipeService.getContent(rid);
	      List<MwRecipeVO> reply_list = recipeService.getReplyContentResult(rid);
	      
	      mv.addObject("vo",vo);
	      mv.addObject("reply_list",reply_list);
	      mv.setViewName("/review/recipe_detail");
	      
	      return mv;
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/recipe_reply", method=RequestMethod.POST)
	public String recipe_reply(MwRecipeVO vo, HttpServletRequest request) throws Exception {
		
		vo = fileService.replyFileCheck(vo);
		
		String result = recipeService.getReplyInsertResult(vo);
		
		fileService.replyFileSave(vo, request);
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/recipe_to_delete", method=RequestMethod.POST, produces = "application/json; charset=utf8")
	public String recipe_to_delete(String rid) throws Exception{
		MwRecipeVO vo = (MwRecipeVO)recipeService.getContent(rid);
		ObjectMapper mapper = new ObjectMapper();
		String jsonifiedVO = mapper.writeValueAsString(vo);
		
		return jsonifiedVO;
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/recipe_delete", method=RequestMethod.POST)
	public String recipe_delete(MwRecipeVO vo, HttpServletRequest request) throws Exception {
		List<String> old_files = new ArrayList<String>();
		old_files.add(vo.getRsfile1());
		old_files.add(vo.getRsfile2());
		old_files.add(vo.getRsfile3());
		old_files.add(vo.getRsfile4());
		old_files.add(vo.getRsfile5());
		old_files.add(vo.getRsfile6());
		
		int result = recipeService.getDeleteResult(vo.getRid());
		
		if(result == 1) {
			fileService.deleteMultipleFiles(vo, request, old_files);
			System.out.println("레시피북 이미지 삭제 처리");
		}
		
		return String.valueOf(result);
	}
	 
	//주문
	 
	@RequestMapping(value="/admin/order_main", method=RequestMethod.GET) 
	public String order_main() { 
		return "/admin/order/order_main"; 
	}
	 
	@RequestMapping(value="/admin/order", method=RequestMethod.GET) 
	public ModelAndView order(String rpage) { 
		ModelAndView mv = new ModelAndView();
		
		Map<String,String> param = pageService.getPageResult(rpage, "order", orderService);
		
		int startCount = Integer.parseInt(param.get("start"));
		int endCount = Integer.parseInt(param.get("end"));
		
		List<Object> olist = orderService.getListResult(startCount, endCount);
		ArrayList<MwOrderVO> list = new ArrayList<MwOrderVO>();
		for(Object obj : olist) {
			list.add((MwOrderVO)obj);
		}
		
		
		for(int i = 0; i< list.size(); i++) {
			String[] a = list.get(i).getOproducts().split(",");
			list.get(i).setPname(orderService.getSelectPnameResult(a[0]));
		}
		
				
		mv.addObject("list",list);
		mv.addObject("dbCount", Integer.parseInt(param.get("dbCount")));
		mv.addObject("pageSize", Integer.parseInt(param.get("pageSize")));
		mv.addObject("reqPage", Integer.parseInt(param.get("reqPage")));	
		
		mv.setViewName("/admin/order/order");
		
		return mv; 
	}
	 
	@RequestMapping(value="/admin/order_detail", method=RequestMethod.GET) 
	public ModelAndView order_detail(String oid) {
		ModelAndView mv = new ModelAndView();
		
		MwOrderVO vo = orderService.getOrderContentResult(oid);//이름이 너무 구리지 않나?
		List<MwOrderVO> list = orderService.getOrderDetailResult(oid);
		
		mv.addObject("vo",vo);
		mv.addObject("list", list);
		mv.setViewName("/admin/order/order_detail");
		
		return mv; 
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/order_status_update", method=RequestMethod.POST)
	public String order_status_update(MwOrderVO vo){
		int result = orderService.getUpdateResult(vo);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/invoice_update", method=RequestMethod.POST)
	public String invoice_update(MwOrderVO vo){
		int result = orderService.getUpdateResult(vo);
		
		return String.valueOf(result);
	}
	
	@ResponseBody
	@RequestMapping(value="/admin/invoice_delete", method=RequestMethod.POST)
	public String invoice_delete(String oid){
		int result = orderService.getInvoiceDeleteResult(oid);
		
		return String.valueOf(result);
	}
	
	
}
