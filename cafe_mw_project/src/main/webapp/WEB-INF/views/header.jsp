<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/headerFooter.css">
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/header.js"></script>
</head>
<body>
<header>
<%--지금의 문제: 늘어나는 창을 누르면 아래 스크롤바가 생긴다. --%>
	<div>
		<div>
			<nav>
				<ul class="menu" id="menu1"> 
					<li class="mainpage"><a href="http://localhost:9000/manwol/index">카페 만월회</a></li>
					<li><a href="#">첫 구매라면?</a></li>
					<li class="dropdown">
						<a href="#">Shop</a>
						<div class="dropdown-content">
							<a href="http://localhost:9000/manwol/product_all">ALL</a>
							<a href="http://localhost:9000/manwol/product_base">만월 원액</a>
							<a href="http://localhost:9000/manwol/product_goods">만월 굿즈</a>
							<a href="http://localhost:9000/manwol/product_gift">선물하기</a>
							<a href="#">단체주문</a>
						</div>
					</li>
					<li class="dropdown">
						<a href="#">About</a>
						<div class="dropdown-content">
							<a href="#">About us</a>
							<a href="#">Recruit</a>
							<a href="#">조각달</a>
						</div>
						</li>
					<li class="dropdown">
						<a href="#">Review</a>
						<div class="dropdown-content">
							<a href="#">레시피북</a>
							<a href="#">Review</a>
						</div>
					</li>
					<li class="dropdown">
						<a href="#">고객센터</a>
						<div class="dropdown-content">
							<a href="https://www.instagram.com/_manwol/" target="_blank">새소식</a>
							<a href="#">자주 묻는 질문</a>
							<a href="#">만월회에게 한마디📢</a>
						</div>
					</li>
				</ul>
			</nav>
		</div>
		
		<div>
			<nav>
				<ul class="menu">
					<li id="login">LOGIN</li>
					<li id="join">JOIN</li>
					<li>
						<a href="#">
							<img src="http://localhost:9000/manwol/resources/images/카트일러스트2.png" alt="쇼핑카트">
						</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
	
	<jsp:include page="kim_login_test.jsp"></jsp:include>
	<jsp:include page="join.jsp"></jsp:include>
</header>



</body>
</html>
