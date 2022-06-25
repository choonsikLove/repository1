<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/notice.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe.css">
</head>
<body>
   <jsp:include page="../header.jsp"></jsp:include>

	<table>
		<tr>
			<td>
				<table style="text-align: center;">
					<tr>
						<td>
							<div style="text-align: center; margin: 70px 0;">
								<h3 style="margin-bottom: 20px;">도움이 필요하신가요?</h3>
								<p style="margin-bottom: 7px; font-size: 14px;">평일 09:00 - 18:00</p>
								<p style="margin-bottom: 7px; font-size: 14px;">점심시간 12:00 - 13:00</p>
								<p style="font-size: 14px;">찾으시는 답변이 없으면 편한 방법으로 문의해주세요.</p>
							</div>
						</td>
					</tr>
					
					<tr>
						<td>
							<div style="display: flex; justify-content: center; padding-bottom: 70px; font-size: 15px;">
								<div style="margin-right: 140px;">
									<p><span class="material-symbols-outlined2" style="border: 1px solid #0042A9; background:  #0A2155; color: white; border-radius:2px; font-size: 30px; margin:10px 0 30px 0;">call</span></p>
									<p style="margin-bottom: 7px; font-weight:bold; color: #0042A9";>전화 상담</p>
									<p>070-7714-7002</p>
								</div>
								<div style="margin-right: 140px;">
									<p><img src="http://localhost:9000/manwol/resources/images/notice/카카오톡.jpg" width="45px;" style="margin-bottom: 30px;"></p>
									<p style="margin-bottom: 7px; font-weight:bold; color: #0042A9";>카카오톡 상담</p>
									<p>@만월회</p>
								</div>
								<div>
									<p><span class="material-symbols-outlined2" style="color: #0A2155; font-size: 45px; margin-bottom:30px;">drafts</span></p>	
									<p style="margin-bottom: 7px; font-weight:bold; color: #0042A9";>이메일 상담</p>
									<p>goeun@manwol.com</p>
								</div>
							</div>
						</td>
					</tr>
					
					<tr>
						<td style="padding-bottom: 10px;">
						   <div>
								<ul class="category"  style="display: flex; justify-content: center; ">
									<li class="category_line"><a href="#"><span style="margin-right: 20px; text-decoration:underline;">전체</span></a></li>
									<li><a href="#"><span style="margin-right: 20px;">주문문의</span></a></li>
									<li><a href="#"><span style="margin-right: 20px;">배송문의</span></a></li>
									<li><a href="#"><span style="margin-right: 20px;">적립금/쿠폰</span></a></li>
									<li><a href="#"><span style="margin-right: 20px;">제품</span></a></li>
									<li><a href="#"><span style="margin-right: 20px;">기타</span></a></li>
								</ul>
							</div>
						</td>
					</tr>
					
					<tr>
						<td style="padding: 30px 0;"width="1000px;">
							<div style="border-bottom: 1px solid black; border-top: 1.4px solid black;">
							 	<div id="toggle_btn1" style="display: flex; padding: 15px 10px 5px 15px; font-weight: bold; font-size: 14px;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/flag.png" style="margin-right: 17px;"></p>
							 		<div style="padding-top: 7px; display: flex;">
							 			<p>적립금/쿠폰</p>
							 			<p style="margin: 0 520px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 			<p><span class="material-symbols-outlined2" id="toggle_down1">keyboard_arrow_down</span></p>
							 			<p><span class="material-symbols-outlined2" id="toggle_up1">keyboard_arrow_up</span></p>
							 		</div>
							 	</div>
							 	<div id="text1" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn2" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">22</span></p>
								 	<p>적립금/쿠폰</p>
								 	<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
								 	<p><span class="material-symbols-outlined2" id="toggle_down2">keyboard_arrow_down</span></p>
								 	<p><span class="material-symbols-outlined2" id="toggle_up2">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text2" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>
						 	
							<div  style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn3" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">21</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down3">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up3">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text3" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn4" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">20</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down4">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up4">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text4" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn5" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">19</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down5">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up5">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text5" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>						 	
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn6" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">18</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down6">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up6">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text6" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>						 	
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn7" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">17</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down7">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up7">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text7" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn8" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">16</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down8">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up8">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text8" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>						 	
						 	
							<div style="border-bottom: 1px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn9" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">15</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down9">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up9">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text9" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>						 	
						 							 	
							<div style="border-bottom: 1.4px solid black; border-top: 1px solid black;">
							 	<div id="toggle_btn10" style="display: flex; padding: 10px 10px 5px 15px; font-weight: bold; font-size: 14px; margin-top: 10px;">
							 		<p><span style="margin-right: 23px;">14</span></p>
							 		<p>적립금/쿠폰</p>
							 		<p style="margin: 0 523px 0 50px;">할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 		<p><span class="material-symbols-outlined2" id="toggle_down10">keyboard_arrow_down</span></p>
							 		<p><span class="material-symbols-outlined2" id="toggle_up10">keyboard_arrow_up</span></p>
							 	</div>
							 	<div id="text10" style="text-align: left; padding: 30px 0; border-top: 1px solid #D8D8D8;">
							 		<p><img src="http://localhost:9000/manwol/resources/images/notice/자주묻는질문1.gif"></p>
									<p>1. 받으신 쿠폰 번호를 복사해주세요.</p>
									<p>2. 만월회 홈페이지 shop 카테고리에서 원하는 상품을 골라주세요.</p>
									<p>3. '구매하기'를 누르고 쿠폰번호 입력란에 복사한 번호를 붙여넣기 해주세요.</p>
									<p>4. 코드확인을 눌러야 할인이 적용됩니다!!!★</p>
									<p>5. 결제하기 클릭하면 주문완료~!</p>
									<br>
									<p>*홈페이지 내 결제만 가능합니다. (네이버페이는 쿠폰이 연동되지 않아 쿠폰사용이 불가능합니다.🙏🏻)</p>
							 		<p>적립금/쿠폰</p>
							 		<p>할인쿠폰을 받았어요. 어떻게 사용해야 하나요?</p>
							 	</div>
						 	</div>						 							 	
						</td>
					</tr>
					
					<tr>
						<td>
							<div style="display: flex; margin:0  0 20px -130px; ">
								<form class="search_f" method="post">
									<input  type="text" placeholder=" Search" class="search_i" name='option'>
									<button  type="submit" class="search_btn">
										<img alt="돋보기" src="http://localhost:9000/manwol/resources/images/review/search.png" style="width: 25px;">
									</button>
								</form>
							</div>
						</td>
					</tr>		
					
					<tr>
						<td style="text-align: center;">
							<div class="page_number" style=" padding-bottom: 100px;">
								<p>
									<span style="cursor: no-drop;"><</span> 
									<span class="page">&emsp;1&emsp;</span>
									<span class="page">2&emsp;</span> 
									<span class="page">3&emsp;</span>
									<span style="cursor: no-drop;">></span>
								</p>
							</div>
						</td>
					</tr>
					
					<tr>
						<td style="display: flex; justify-content: center;">
							<div style="width: 500px; padding-bottom: 100px;">
								<p><span class="material-symbols-outlined2" style="font-size: 45px; color:  #0A2155">settings_suggest</span></p>
								<br><br>
								<p><strong style="font-size: 20px;">Business Contact</strong></p>
								<br>
								<p style="margin-bottom: 7px; font-size: 14px;">Site&emsp;사업자몰 홈페이지 1:1 문의</p>
								<p style="margin-bottom: 7px; font-size: 14px;">kakao&emsp;@만월회비즈</p>
								<p style="margin-bottom: 7px; font-size: 14px;">Mail&emsp;jeyoung@manwol.com</p>
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>

   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>