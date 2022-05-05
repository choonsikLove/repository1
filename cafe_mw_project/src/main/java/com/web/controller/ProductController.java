package com.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ProductController {
   
   @RequestMapping(value="/product_all", method=RequestMethod.GET)
   public String product_all() {
      
      return "/product/product_all";
   }
   

   @RequestMapping(value="/product_goods", method=RequestMethod.GET)
   public String product_goods() {
         
      return "/product/product_goods";
   }
   
   @RequestMapping(value="/product_gift", method=RequestMethod.GET)
   public String product_gift() {
         
      return "/product/product_gift";
   }         

   @RequestMapping(value="/product_base", method=RequestMethod.GET)
   public String product_base() {
         
      return "/product/product_base";
   } 
   
   @RequestMapping(value="/product_detail", method=RequestMethod.GET)
   public String product_detail() {
         
      return "/product/product_detail";
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
   
