<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product.css">
</head>
<body>

<jsp:include page="../header.jsp"></jsp:include>
<div>

   
   <div>
      <ul class="category">
         <li class="category_line"><a href="http://localhost:9000/manwol/product_all"><span>ALL</span></a></li>
         <li><a href="http://localhost:9000/manwol/product_base"><span>만월 원액</span></a></li>
         <li><a href="http://localhost:9000/manwol/product_goods"><span>만월 굿즈</span></a></li>
         <li><a href="http://localhost:9000/manwol/product_gift"><span>선물하기</span></a></li>
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
                    <a href="http://localhost:9000/manwol/product_detail?pnum=${vo.pnum }"><img height="400px" width="400px" src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile}"></</a> 
                        <p><a href="http://localhost:9000/manwol/admin/product_detail"><strong>${vo.pname}</strong></a></p>              
                        <p>${vo.pprice}  <del>${vo.psaleprice}</del></p>
                        <img width="48px" src="http://localhost:9000/manwol/resources/upload/${vo.ptagimage}">   
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