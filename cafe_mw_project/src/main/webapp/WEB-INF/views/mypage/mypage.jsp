<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/mypage.css"/>
</head>
<body>
<input type="text" value="${vo.memail}" id="member_email"><%--절대로 지우면 안됩니다! --%>
<input type="text" value="${vo.msprofile}"><%--절대로 지우면 안됩니다! --%>
	<jsp:include page="../header.jsp"></jsp:include>
	<div id='mypage_content'>
		<div id='content_border'>
			<div id='notice'>
				<span class='boldspan'>⚠️ 네이버페이</span>로 구매한 주문은<br>
				<span class='boldspan'>'네이버페이>결제내역'</span>에서 확인 가능합니다.<br><br>
				<span class='boldspan'>⚠️ 배송지 변경 및 주문 취소</span>는<br>
				<span class='boldspan'>주문/결제 당일</span> 문의해주셔야 변경 가능합니다.<br><br>
				<span class='boldspan'>⚠️ 만월쿠폰 사용 방법</span><br>
				<span class='bgcspan'>마이페이지 > 쿠폰 > 쿠폰받기</span>를 클릭해야 쿠폰이 정상발급 됩니다.<br>
				<span class='colorspan1'>* 쿠폰코드의 경우 <span class='linespan'>결제창에서 직접 쿠폰번호를 입력</span>해주세요!</span>
			</div>
			<nav id='mypage_nav'>
				<ul>
					<li><a href='?m2=order'>주문조회</a></li>
					<li><a href='?m2=wish_list'>위시리스트</a></li>
					<li><a href='?m2=regularly'>정기구독 관리</a></li>
					<li><a href='?m2=cancel'>취소조회</a></li>
					<li><a href='?m2=point_list'>만월포인트</a></li>
					<li><a href='?m2=qna'>1:1문의</a></li>
					<li class='my_inform'>정보수정</li>
					<li class='withdrow_btn'>회원탈퇴</li>
				</ul>
			</nav>
			
			<section id='mypage_section'>
				<div id='border'>
					<c:choose>
						<c:when test="${vo.msprofile != null}">
							<img class='my_inform' id='mypage_profile' src='http://localhost:9000/manwol/resources/upload/${vo.msprofile}'>
						</c:when>
						<c:otherwise>
							<img class='my_inform' id='mypage_profile' src='http://localhost:9000/manwol/resources/images/default_profile.png'>
						</c:otherwise>
					</c:choose>
					<div class='my_grade'>
						<span>
							<span class='colorspan2'>일반</span> 
							<span id="mypage_mname">${vo.mname }</span>님 안녕하세요.
						</span>
						<br><br>
						구매금액 15,000원 달성 시<br>
						달까지 100km로 승급됩니다.<br>
						<div id='grade_benefit'>
							등급혜택 보기
						</div>
					</div>
					<div class='my_point'>
						만월포인트<br><br>
						<span>0</span>
					</div>
				</div>
				<div class='nav_content'>
					<span class='order_title'>주문 조회</span>
					
					<div class='order_list'>
						<span class='order_id'>
							주문번호 &nbsp; <a href='#'>2022051638307<span> &gt;</span></a>
						</span>
						<span class='order_date'>
							주문일자 2022-05-16
						</span>
						<br>
						<div class='order_table'>
							<img class='order_img' src='http://localhost:9000/manwol/resources/images/product/첫 구매고객 500원.jpg'>
							<div class='order_product'>
								<span class='order_list_product'>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</span><br>
								<span class='order_list_option'>밀크티1box (40ml*2포)</span><br>
								<span class='order_list_price'>500원 / 1개</span>
							</div>
							<div class='order_status'>입금대기</div>
							<div class='order_btn'>취소</div>
						</div>
					</div>
					
				</div>
			</section>
		</div>		
	</div>
	<jsp:include page="mypage_modal.jsp"></jsp:include>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>