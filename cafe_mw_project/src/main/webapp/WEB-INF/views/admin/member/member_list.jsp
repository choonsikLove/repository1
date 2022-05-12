<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<li><a href="#">주문 관리</a></li>
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
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>1</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>2</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>3</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>4</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>5</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>6</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>7</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>8</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>9</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td>10</td>
					<td class="toMemberPage">이름</td>
					<td class="toMemberPage">아이디</td>
					<td>연락처</td>
					<td>가입일</td>
				</tr>
				<tr>
					<td colspan="5">
						<input type="text" placeholder="Search">
						<span class="material-symbols-outlined">search</span>
					</td>
				</tr>	
				<tr>
					<td colspan="5">&lt; 1 2 3 &gt;</td>
				</tr>	
			</table>
		</div>
	</div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>