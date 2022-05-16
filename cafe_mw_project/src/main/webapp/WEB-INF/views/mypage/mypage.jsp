<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<style type="text/css">
	* {
		padding: 0px;
		margin: 0px;
	}
	
	ul, li {
		list-style: none;
	}
	
	li{
		cursor: pointer;
		margin: 25px 0;
	}
	
	#mypage_content {
		width: 92%;
		height: 1100px;
		padding: 2% 4%;
	}
	
	#content_border{
		border-top: 1px solid lightgray;
		border-bottom: 1px solid lightgray;
		width: 100%;
		height: 100%;
	}

	#notice {
		text-align: center;
		font-size: 19px;
		margin-top: 100px;
	}
	
	.boldspan {
		font-weight: bold;
	}
	
	.bgcspan {
		background: #CAD7E3;
	}
	
	.colorspan1 {
		color: gray;
	}
	
	.linespan {
		text-decoration: underline;
	}
	
	div+section {
		background: lightgray;
	}
	
	#mypage_nav {
		display: inline-block;
		width: 10%;
		height: 500px;
		float: left;
		padding: 1.5%;
		color: black;
		font-size: 13px;
	}
	
	#mypage_section {
		width: 82%;
		float: right;
		display: inline-block;
		padding: 3% 1.5%;
	}
	
	#mypage_section:after {
		content: "";
		display: block;
		clear: both;
	}
	
	#border {
		padding: 30px 3%;
		background: white;
		height: 140px;
	}
	
	#mypage_profile{
		display: inline-block;
		width: 80px;
		height: 80px;
		float: left;
		border-radius: 100%;
		background-size: auto 100%;
		background-repeat: no-repeat;
		overflow: hidden;
		margin-right: 30px;
		margin-top: 30px;
	}
	
	.my_grade {
		width: 48.5%;
		height: 140px;
		float: left;
		display: inline-block;
	}
	
	.my_grade:after {
		content: "";
		display: block;
		clear: both;
	}
	
	.my_grade>span {
		font-size: 23px;
	}
	
	.colorspan2 {
		color: #004A98;
	}
	
	#grade_benefit {
		border: black solid 1px;
		display: inline-block;
		font-weight: bold;
		font-size: 14px;
		padding: 5px;
		margin-left: 5px;
		margin-top: 10px;
		padding: 5px;
	}
	
	.my_point {
		width: 19%;
		height: 105px;
		border-left: 1px solid lightgray;
		display: inline-block;
		float: right;
		text-align: center;
		font-size: 13px;
		padding-top: 35px;;
	}
	
	.my_point>span {
		font-size: 30px;
		font-weight: bold;
	}
	
	.nav_content {
		clear: both;
		margin-top: 50px;
	}
	
	#notice, #mypage_content {
		background: #f2f2f2;
	}
	
	
	
	.order_title{
		font-size: 18px;
	}
	.order_id{
		float: left;
		display: inline-block;
		font-size: 13px;
	}
	.order_id a { 
		color: #004A98;
	}
	.order_id a span{
		border: 1px solid #004A98;
		border-radius: 100%;
		font-size: 6px;
		padding: 1px 3px;
		display: inline-block;
		
	}
	.order_date{
		float: right;
		display: inline-block;
		font-size: 13px
	}
	.order_date:after {
		content: "";
		display: block;
		clear: both;
	}
	.order_list{
		margin: 10px 0px;
	}
	.order_table{
		border: 1px #DADADA solid;
		background: white;
		height: 100px;
		padding: 20px;
		font-size: 13px;
		margin-top: 10px;
	}
	.order_img{
		border: 1px #DADADA solid;
		display: inline-block;
		float: left;
		background-size: 100% auto;
		width: 100px;
		height: 100px;
	}
	.order_product{
		display: inline-block;
		float: left;
		margin-left: 20px;
		line-height: 20px;
		width: 40%;
	
	}
	.order_status{
		display: inline-block;
		float: left;
		margin-top: 45px;
		width: 10%;
		margin-left: 10%;
		color: #004A98;
	}
	.order_btn{
		border: 1px #DADADA solid;
		display: inline-block;
		float: right;
		width: 80px;
		height: 25px;
		margin-top: 40px;
		text-align: center;
		padding-top: 8px;
	}
	.order_cancle:after {
		content: "";
		display: block;
		clear: both;
	}
	
	.order_list_product{
		font-weight: bold;
		
	}
	.order_list_option{
		color: gray;
		font-size: 12px;
	}
	.order_list_price{
		font-size: 12px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		/*		정보수정 클릭시		*/
		$('.my_inform').click(function(){
			$('#mypage_modal_outer').css("display","block");
			$('#modify_inner').css("display","block");
		});
		
		/*		회원탈퇴 클릭시		*/
		$('.withdrow_btn').click(function(){
			$('#mypage_modal_outer').css("display","block");
			$('#withdraw_inner').css("display","block");
		});
		
		/*		끄기2		*/
		$('.modal_exit').click(function(){
			$('#mypage_modal_outer').css("display","none");
			$('#modify_inner').css("display","none");
			$('#withdraw_inner').css("display","none");
		});
		
		/*		끄기3		*/
		$('#withdraw_cancel').click(function(){
			$('#mypage_modal_outer').css("display","none");
			$('#withdraw_inner').css("display","none");
		});
		
		/*		X에 마우스 올라갈 때		*/
		$('.modal_exit').mouseenter(function(){
			$('.modal_exit_ex').css("display","block");
		});

		/*		X에서 마우스 벗어날 때		*/
		$('.modal_exit').mouseleave(function(){
			$('.modal_exit_ex').css("display","none");
		});
	});
</script>
</head>
<body>
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
					<img class='my_inform' id='mypage_profile' src='http://localhost:9000/manwol/resources/images/default_profile.png'>
					<div class='my_grade'>
						<span><span class='colorspan2'>일반</span> 유덕현님 안녕하세요.</span><br><br>
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