<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<img alt="관리자사진" src="http://localhost:9000/manwol/resources/images/default_profile.png">
			</div>
			<div>
				<p><a href="http://localhost:9000/manwol/admin"><span>관리자</span></a>님 안녕하세요.</p>
				<p>회원 관리 페이지입니다.</p>
			</div>
		</div>
		
		<div class="memberInfo">
			<div>
				<img alt="프사" src="
					<c:choose>
						<c:when test="${empty vo.mprofile}">
							http://localhost:9000/manwol/resources/images/default_profile.png
						</c:when>
						<c:otherwise>
							http://localhost:9000/manwol/resources/upload/${vo.msprofile }
						</c:otherwise>
					</c:choose>
				">
			</div>
			<div>
				<table border='1'>
					<tr>
						<td>이름</td><td>${vo.mname }</td>
						<td>연락처</td><td>${vo.mhp }</td>
					</tr>
					<tr>
						<td>아이디</td><td>${vo.memail }</td>
						<td>추천인코드</td>
						<td>
							<c:choose>
								<c:when test="${empty vo.reccode }">
									미생성
								</c:when>
								<c:otherwise>
									${vo.reccode }
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td>주소</td><td colspan="3">${vo.maddr1 }</td>
					</tr>
					<tr>
						<td>상세 주소</td><td colspan="3">${vo.maddr2 }</td>
					</tr>
					<tr>
						<td rowspan="2">이벤트/혜택 소식<br> 수신 여부</td>
						<td>sns</td><td colspan="2">
							<c:choose>
								<c:when test="${vo.msg_sms eq 1}">
									동의
								</c:when>
								<c:otherwise>
									미동의
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td>email</td><td colspan="2">
							<c:choose>
								<c:when test="${vo.msg_email eq 1}">
									동의
								</c:when>
								<c:otherwise>
									미동의
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
			</div>
		</div>
		
		<div class="adminBox">
			<p>주문 내역</p>
			<table border='1' class="member_order">
				<tr>
					<td>주문번호</td>
					<td>주문 상태</td>
					<td>주문일자</td>
				</tr>
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan='3'>
								주문 결과가 없습니다.
							</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="vo" items="${list }">
							<tr>
								<td>
									<a href="http://localhost:9000/manwol/admin/order_detail?oid=${vo.oid }" target="_blank" rel="noreferrer noopener">
										${vo.oid }
									</a>
								</td>
								<td>
									<c:choose>
										<c:when test="${vo.ostatus == 0 }">
											입금 대기 중
										</c:when>
										<c:when test="${vo.ostatus == 1 }">
											배송 준비
										</c:when>
										<c:when test="${ vo.ostatus == 2 }">
											배송 중
										</c:when>
										<c:when test="${vo.ostatus == 3 }">
											배송 완료
										</c:when>
									</c:choose>
								</td>
								<td>${vo.odate }</td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				<tr>
					<td colspan="3">
						<form>
							<input type="text" placeholder="Search">
							<span class="material-symbols-outlined">search</span>
						</form>
					</td>
				</tr>	
			</table>
		</div>
</div>		


</div>

<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>