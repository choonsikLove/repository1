<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
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
				<p>관리자 메인 페이지입니다.</p>
			</div>
		</div>
		
		<div class="orderDiv">
			<ul id="orderStatus">
				<c:choose>
					<c:when test="${empty os}">
						<li class="os_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
					<a href="http://localhost:9000/manwol/admin/order">전체</a></li>
				<li>|</li>
				<c:choose>
					<c:when test="${os eq '0'}">
						<li class="os_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
					<a href="?ostatus=0">입금 대기 중</a></li>
				<li>|</li>
				<c:choose>
					<c:when test="${os == '1'}">
						<li class="os_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
					<a href="?ostatus=1">배송 준비</a></li>
				<li>|</li>
				<c:choose>
					<c:when test="${os == '2'}">
						<li class="os_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
					<a href="?ostatus=2">배송 준비</a></li>
				<li>|</li>
				<c:choose>
					<c:when test="${os == '3'}">
						<li class="os_line">
					</c:when>
					<c:otherwise>
						<li>
					</c:otherwise>
				</c:choose>
					<a href="?ostatus=3">배송 완료</a></li>
			</ul>
			<div>
				<table border='1'>
					<tr>
						<td>주문 번호</td>
						<td>주문인</td>
						<td>주문 일자</td>
						<td>주문 상품</td>
						<td>주문 금액</td>
						<td>주문상태</td>
						<td>비고</td>
					</tr>
					<c:choose>
						<c:when test="${empty list}">
							<tr>
								<td colspan='7'>주문 결과가 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="vo" items="${list }" varStatus="status">
								<tr>
									<td>${vo.oid }</td>
									<td>${vo.obuyer }</td>
									<td>${vo.odate }</td>
									<td><a href="http://localhost:9000/manwol/admin/order_detail?oid=${vo.oid }" target="_blank" rel="noreferrer noopener">
											${ vo.pname} 외 n건
										</a>
									</td>
									<td>${vo.ototal }</td>
									<td>
										<div class="ostatus_div">
										<c:choose>
											<c:when test="${vo.ostatus == 0 }">
												<input type="hidden" value="${vo.oid }">
												<span class="orderStatus_update">입금 대기 중</span>
												<input type="text" readonly="readonly" value="운송장 번호 미등록" class="order_invoice">
											</c:when>
											<c:when test="${vo.ostatus == 1 }">
												<input type="hidden" value="${vo.oid }">
												<span class="orderStatus_update">배송 준비</span>
												<input type="text" readonly="readonly" value="운송장 번호 미등록" class="order_invoice">
											</c:when>
											<c:when test="${vo.ostatus == 2 }">
												<input type="hidden" value="${vo.oid }">
												<span class="orderStatus_update">배송 중</span>
												<input type="text" readonly="readonly" value="${vo.oinvoice }" class="order_invoice">
											</c:when>
											<c:when test="${vo.ostatus == 3 }">
												<input type="hidden" value="${vo.oid }">
												<span class="orderStatus_update">배송 완료</span>
												<input type="text" readonly="readonly" value="${vo.oinvoice }" class="order_invoice">
											</c:when>
										</c:choose>
										</div>
									</td>
									<td>비고란</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<tr>
						<td colspan='7'>
							<form>
								<input type="text" placeholder="Search" id="order_search">
								<span class="material-symbols-outlined">search</span>
							</form>
						</td>
					</tr>
					<tr>
						<td colspan='7'>
							<jsp:include page="order_page.jsp"></jsp:include>
						</td>
					</tr>
					
				</table>
			</div>
		</div>
		
		
		
	</div>
</div>
	<jsp:include page="orderStatus_update.jsp"></jsp:include>
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>