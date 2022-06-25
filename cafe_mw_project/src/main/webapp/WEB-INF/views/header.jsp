<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/headerFooter.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/header.js"></script>
</head>
<body>
<header>
   <div>
      <div>
         <nav>
            <ul class="menu" id="menu1"> 
               <li class="mainpage"><a href="http://localhost:9000/manwol/index">카페 만월회</a></li>
               <li><a href="#">첫 구매라면?</a></li>
               <li class="dropdown">
                  <a href="http://localhost:9000/manwol/product_all">Shop</a>
                  <div class="dropdown-content">
                     <a href="http://localhost:9000/manwol/product_all">ALL</a>
                     <a href="http://localhost:9000/manwol/product_all?pcategory=base">만월 원액</a>
                     <a href="http://localhost:9000/manwol/product_all?pcategory=goods">만월 굿즈</a>
                     <a href="http://localhost:9000/manwol/product_all?pcategory=gift">선물하기</a>
                     <a href="http://localhost:9000/manwol/product_group_order2">단체주문</a>
                  </div>
               </li>
               <li class="dropdown">
                  <a href="http://localhost:9000/manwol/about_us">About</a>
                  <div class="dropdown-content">
                     <a href="http://localhost:9000/manwol/about_us">About us</a>
                     <a href="http://localhost:9000/manwol/recruit">Recruit</a>
                     <a href="#">조각달</a>
                  </div>
                  </li>
               <li class="dropdown">
                  <a href="http://localhost:9000/manwol/recipe">Review</a>
                  <div class="dropdown-content">
                     <a href="http://localhost:9000/manwol/recipe">레시피북</a>
                     <a href="#">Review</a>
                  </div>
               </li>
               <li class="dropdown">
                  <a href="http://localhost:9000/manwol/notice_list">고객센터</a>
                  <div class="dropdown-content">
                     <a href="https://www.instagram.com/_manwol/" target="_blank">새소식</a>
                     <a href="http://localhost:9000/manwol/notice_list">자주 묻는 질문</a>
                     <a href="http://localhost:9000/manwol/suggestion">만월회에게 한마디📢</a>
                  </div>
               </li>
            </ul>
         </nav>
      </div>
      
      <div>
         <nav>
            <c:choose>
               <c:when test="${sessionScope.memail != null }">
                  <ul class="menu">
                     <li>
                        <a href="http://localhost:9000/manwol/shop_cart">
                           <img src="http://localhost:9000/manwol/resources/images/카트일러스트2.png" alt="쇼핑카트">
                        </a>
                     </li>
                     <c:choose>
                     	<c:when test="${sessionScope.memail == 'admin' }">
                     		<li><a href="http://localhost:9000/manwol/admin">ADMIN</a></li>
                     	</c:when>
                     	<c:otherwise>
		                     <li id="mypage">MY</li>
                     	</c:otherwise>
                     </c:choose>
                     <li id="logout">LOGOUT</li>
                  </ul>
               </c:when>
               <c:otherwise>
                  <ul class="menu">
                     <li id="login">LOGIN</li>
                     <li id="join">JOIN</li>
                     <li>
                        <a href="http://localhost:9000/manwol/shop_cart">
                           <img src="http://localhost:9000/manwol/resources/images/카트일러스트2.png" alt="쇼핑카트">
                        </a>
                     </li>
                  </ul>
               </c:otherwise>
            </c:choose>
         </nav>
      </div>
   </div>
   
   <jsp:include page="kim_login_test.jsp"></jsp:include>

   <jsp:include page="join.jsp"></jsp:include>
</header>



</body>
</html>