<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100" rel="stylesheet" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/admin.js"></script>
</head>
<body>

<jsp:include page="../../header.jsp"></jsp:include>
<hr class="adminHr">
<div>

	<div>
		<nav>
			<ul>
				<li><a href="http://localhost:9000/manwol/admin/member_list">회원 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/product_list">상품 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/order_main">주문 관리</a></li>
				<li><a href="http://localhost:9000/manwol/admin/review_main">Review 관리</a></li>
		 	</ul>
		</nav>
	</div>

	<div class="adminWrap">
		<div class="welcome">
			<div>
				<img alt="임시" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<p><a href="http://localhost:9000/manwol/admin"><span>관리자</span></a>님 안녕하세요.</p>
				<p>회원 관리 페이지입니다.</p>
			</div>
		</div>
		
		<div class="member_table">
			<table border='1'>
				<tr>
					<td>번호</td>
					<td>이름</td>
					<td>아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<c:forEach var="vo" items="${list}">
					<tr>
						<td>${vo.mno }</td>
						<td class="toMemberPage"><a href="member_page?memail=${vo.memail}">${vo.mname }</a></td>
						<td class="toMemberPage"><a href="member_page?memail=${vo.memail}">${vo.memail }</a></td>
						<td>${vo.mhp }</td>
						<td>${vo.mdate }</td>
					</tr>
				</c:forEach>
				<tr>
					<td colspan="5">
						<form>
							<input type="text" placeholder="Search">
							<span class="material-symbols-outlined">search</span>
						</form>
					</td>
				</tr>	
				<jsp:include page="member_list2.jsp"></jsp:include>
			</table>
		</div>
	</div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>