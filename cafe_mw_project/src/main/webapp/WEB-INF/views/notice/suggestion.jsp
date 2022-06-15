<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/review.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/suggestion.css">
</head>
<body>
   <!-- header -->
   <jsp:include page="../header.jsp"></jsp:include>

   <!-- content -->
   <form action="">
		<table style="width: 70%; font-size: 15px;">
			<tr>
				<td>
					<h2 class="review_title" style="margin-bottom:10px; margin-top: 50px;">📢 여러분에게 만월회 어떠셨나요?</h2> <br>
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin-bottom:3px;">만월회를 이용하시면서 불편했던 점, 제안하고 싶은 점들을 남겨주세요.</p>
					<p style="margin-bottom:3px;">남겨주신 소중한 의견들은 담당자가 실시간으로 확인하고 있어요🧐</p> <br>
					<p style="margin-bottom:3px;">불편 및 개선 사항은 빠르게 조치하고, 제안해주신 사항은 적극 검토&middot;반영할게요.</p>
					<p>항상 고객님 의견을 귀기울여 듣고 더욱 발전하는 만월회 되겠습니다.</p>
				</td>
			</tr>
			<tr>
				<td class="rcategory">
					<p style="margin-top: 65px; margin-bottom:10px;">1. 카테고리
						<img src="http://localhost:9000/manwol/resources/images/circle_icon.jpg" width="10px;" style="padding-bottom: 3px;">
					</p>
					<div>
						<p  style="margin-bottom:7px;"><input type="radio" name="category"> 👎🏻 불편했어요 (초심 잃은 맛, 불만족스런 서비스 등 따끔한 충고 한마디)</p>
						<p style="margin-bottom:10px;"><input type="radio" name="category"> 💡 제안하고 싶어요 (개선 방안, 신제품 추천 등 반짝이는 아이디어)</p>
						<p><input type="radio" name="category"> 기타 의견</p>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin-top: 25px;">2. 제목
						<img src="http://localhost:9000/manwol/resources/images/circle_icon.jpg" width="10px;" style="padding-bottom: 3px;">
					</p> 
					<input type="text" style="margin-top: 30px; border-top:none; border-left: none; border-right: none; width: 100%; border-bottom: 1px solid black;">
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin: 15px 0 20px 0;">3. 하고 싶은 말을 마음껏 적어주세요.
						<img src="http://localhost:9000/manwol/resources/images/circle_icon.jpg" width="10px;" style="padding-bottom: 3px;">
					</p> 
					<span><textarea style="border-top:none; border-left: none; border-right: none; width: 100%; height:75px;  border-bottom: 1px solid black;"></textarea></span>
				</td>
			</tr>
			<tr>
				<td>
					<p style="margin: 15px 0 5px 0;">4. 이미지/동영상 올리기(최대 50MB 첨부 가능)</p> 				
					<label>
						<img src="http://localhost:9000/manwol/resources/images/btn.jpg" width="150px;">
						<span><input type='file' style="margin-bottom: 30px;"></span>
					</label>	
					
				</td>
			</tr>
			<tr>
				<td style="text-align: center;">
					<button type="button" style="padding: 10px 27px 10px 25px; margin-bottom: 100px; background: white; border: 1.3px solid rgb(95,93,93);"><img alt="check_icon" src="http://localhost:9000/manwol/resources/images/check_icon.png" width="18px;" onclick=" fn_submit();"><strong style="color: #0A2155;"> 보내기</strong></button>
				</td>
			</tr>
		</table>
	</form>

	<!-- 모달창 -->
	<div class="modal">
		<div class="modal_inner">
			<div class="desc">
				<div class="desc_header">
					<div id="user">
						<img alt=""
							src="http://localhost:9000/manwol/resources/images/review/사용자.png">
					</div>
					<div class="star_id">
						<p class="star_img">★★★★★</p>
						<p id="id">goun****</p>
					</div>
					<button class="close_modal">&times;</button>
				</div>

				<div class="option">
					<div id="option1">
						<small>[옵션] 종류: 밀크티/용량: 12개입 (-17%)</small>
					</div>
					<div id="option2">
						<p>맛있어요!</p>
						<p>레시피대로 하면 맛있꾸 찐해요 저는 우유조금더넣어서 먹어요</p>
					</div>
				</div>

				<div class="product">
					<div id="product1">
						<a href="http://localhost:9000/manwol/product_detail"> <img
							alt=""
							src="http://localhost:9000/manwol/resources/images/product/만월회 음료 원액 베이스 10종(2개입,12개입).jpg"
							style="width: 45px; height: 45px;">
						</a>
					</div>
					<div id="product2">
						<a href="http://localhost:9000/manwol/product_detail"> <span>만월회
								음료 원액 베이스 10종(...</span>
						</a>
					</div>
				</div>

				<div class="comment1">
					<p style="font-size: 14px;">
						<span style="color: black;">댓글 </span><span
							style="color: #0042A9;">0</span>
						<button class="cw_btn">댓글쓰기</button>
					</p>
				</div>

				<div class="comment2">
					<form action="" name="comment2">
						<textarea name="c" id="comment2_te" placeholder="댓글" rows="30"
							cols="1000"></textarea>
						<p>
							<label class="filebutton"> 
								<img src="http://localhost:9000/manwol/resources/images/review/image.png" />
								<span><input type="file" id="myfile" name="myfile"></span>
							</label>
							<button type="button" class="w_btn" onclick=" fn_submit();">작성</button>
						</p>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!--  footer -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>