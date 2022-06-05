package com.web.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.service.MwPageServiceImpl;
import com.web.service.MwProductServiceImpl;
import com.web.vo.MwCartVO;
import com.web.vo.MwProductVO;

@Controller
public class ProductController {
	
	@Autowired
	private MwProductServiceImpl productService;
	
    @Autowired
	private MwPageServiceImpl pageService;
   
	 @RequestMapping(value="/product_all", method=RequestMethod.GET)
	 public ModelAndView product_all(String rpage, String pcategory) {
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

	    mv.setViewName("/product/product_all");   

	    return mv;
	 }
	

   
   @RequestMapping(value="/product_detail", method=RequestMethod.GET)
  	public ModelAndView product_detail(String pnum, HttpServletRequest request) {
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
  		
  		HttpSession session = request.getSession();
 	    String memail = (String)session.getAttribute("memail");
 	    
  		mv.addObject("vo", vo);
  		mv.addObject("memail",memail);
  		mv.addObject("tagimage1", tagimage1);
  		mv.addObject("tagimage2", tagimage2);
  		
  		mv.setViewName("/product/product_detail");
  		
  		return mv; 
  	}
  
   @RequestMapping(value="/product_group_order", method=RequestMethod.GET)
   public String product_group_order() {
         
      return "/product/product_group_order";
   } 
   
   @RequestMapping(value="/product_group_order2", method=RequestMethod.GET)
   public String product_group_order2() {
         
      return "/product/product_group_order2";
   } 
}
   
