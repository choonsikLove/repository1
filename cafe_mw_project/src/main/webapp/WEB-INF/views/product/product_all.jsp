<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product.css">
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>
<div>

   
     <div>
	     <ul class="category">
	         <c:choose>
	            <c:when test="${empty pd}">
	               <li class="category_line">
	            </c:when>
	            <c:otherwise>
	               <li>
	            </c:otherwise>
	         </c:choose>
	                  <a href="http://localhost:9000/manwol/product_all"><span>ALL</span></a></li>
	         <c:choose>
	            <c:when test="${pd eq 'base'}">
	               <li class="category_line">
	            </c:when>
	            <c:otherwise>
	               <li>
	            </c:otherwise>
	         </c:choose>
	                  <a href="?pcategory=base"><span>만월 원액</span></a></li>
	         <c:choose>
	            <c:when test="${pd eq 'goods'}">
	               <li class="category_line">
	            </c:when>
	            <c:otherwise>
	               <li>
	            </c:otherwise>
	         </c:choose>
	                  <a href="?pcategory=goods"><span>만월 굿즈</span></a></li>
	         <c:choose>
	            <c:when test="${pd eq 'gift'}">
	               <li class="category_line">
	            </c:when>
	            <c:otherwise>
	               <li>
	            </c:otherwise>
	         </c:choose>
	                  <a href="?pcategory=gift"><span>선물하기</span></a></li>   
	   		<li><a href="http://localhost:9000/manwol/product_group_order"><span>단체주문</span></a></li>
	   </ul>                        
   </div>
   
   
 
   
   <div class="contents">
       <table style="width:1200px;">
         <tr>
            <th colspan="3"><p class="contents_line"></p></th>
         </tr>
         <c:forEach var="vo" items="${list}" varStatus="status">
         <c:if test="${status.index%3==0}">
         <tr>
         </c:if>
            <td>
              <div class="contents1">
                 <a href="http://localhost:9000/manwol/product_detail?pnum=${vo.pnum }">
                    <img height="400px" width="400px" src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile}">
                 </a> 
                 <p>
                      <a href="http://localhost:9000/manwol/admin/product_detail?pnum=${vo.pnum }">
                         <strong>${vo.pname}</strong>
                       </a>
                 </p>              
                 <c:choose>
               <c:when test="${vo.psaleprice == 0}">
                  <span class="product_detail_price">${vo.pprice }원</span><br>
               </c:when>
               <c:otherwise>
                  <span class="former_price">${vo.pprice }원</span>
                  <span class="product_detail_price">${vo.psaleprice }원</span><br>
               </c:otherwise>
            </c:choose>
            <c:choose>
	            <c:when test="${vo.ptagimage == '새상품'}">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '주문폭주상품'}">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '세일상품'}">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '선물추천상품'}">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '새상품,주문폭주상품'}">
	               <img width="48px" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '새상품,세일상품'}">
	               <img width="48px" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '새상품,선물추천상품'}">
	               <img width="48px" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '주문폭주상품,세일상품'}">
	               <img width="48px" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '주문폭주상품,선물추천상품'}">
	               <img width="48px" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg">
	            </c:when>
	            <c:when test="${vo.ptagimage == '세일상품,선물추천상품'}">
	               <img width="48px" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg">
	             <img width="48px" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg">
	            </c:when>
	            <c:otherwise> <%--지워도 될 듯 --%>
	            </c:otherwise>
             </c:choose>
             <p> 
                 <small class="material-symbols-outlined" style="font-size: 15px">chat_bubble</small>295
                 <a style="cursor: position;"><small class="material-symbols-outlined" style="font-size: 15px;">shopping_cart</small>Cart</a>
             </p>
             </div>
            </td>
            </c:forEach>
         </tr>
         </table>
      </div>        
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>