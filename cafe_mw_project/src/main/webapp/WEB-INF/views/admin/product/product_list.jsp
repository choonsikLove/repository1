<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
</head>
<body>

<jsp:include page="../../header.jsp"></jsp:include>


<div class="adminWrap">
		
		<div class="welcome">
			<div>
				<img alt="임시" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<p><a href="http://localhost:9000/manwol/admin"><span>관리자</span></a>님 안녕하세요.</p>
				<p>상품 관리 페이지입니다.</p>
			</div>
		</div>
		
		<div>
			<ul>
				<li><a href="#">상품 관리</a></li>
				<li><a href="#">상품 칸이 여기에</a></li>
				<li><a href="#">나올 예정</a></li>
				<li><a href="#">상품페이지랑 비슷</a></li>
			</ul>
		</div>
	</div>

<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>