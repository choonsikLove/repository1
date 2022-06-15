<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(관리자 접속 중)카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<link rel="stylesheet"
   href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/review.js"></script>
<script src="http://localhost:9000/manwol/resources/js/admin.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/review.css">
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
		
		<%--새 div --%>
		
		<div class="reviewDiv">
			<h2>Review 관리</h2>
			<table border='1'>
				<tr>
					<td>전체</td>
					<td>&nbsp;(13842)</td>
					<td>|</td>
					<td>포토구매평</td>
					<td> (7410)</td>
				</tr>
				<tr>
					<td id="baseBox">원액</td>
					<td>|</td>
					<td>굿즈</td>
					<td>|</td>
					<td>선물하기</td>
				</tr>
			</table>
			<ul id="baseTypes">
				<li>ALL</li>
				<li>밀크티</li>
				<li>말차</li>
				<li>악마초코</li>
				<li>단호박</li>
				<li>민트초코</li>
				<li>흑임자</li>
				<li>쑥</li>
				<li>그린티초코</li>
				<li>자몽샤워</li>
				<li>리얼딸기</li>
			</ul>
			<ul>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<button class="hideReview">숨김</button>
					<button class="deleteReview">삭제</button>
					<div>   
						<a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>  
						<div style="display: flex;" class="open_modal">
							<div>
								<img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
							</div>
							<div class="mini1_t">
								<p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
								<p class="mini1_t1"><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
							</div>
						</div> 
					<p class="id">goun****</p>
					</div>
				</li>
				<li>
					<div>
						< 1 2 3 4 5 6 7 8 9 >				
					</div>
				</li>
			</ul>
		</div>
		
		
   
   
   <!-- 모달창 -->
   	<div class="modal">
		<div class="modal_inner">
			<div class="desc">
			<div class="desc_header">
				<div id="user">
					<img alt="" src="http://localhost:9000/manwol/resources/images/review/사용자.png">
				</div>
				<div  class="star_id">
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
					<a href="http://localhost:9000/manwol/product_detail">
						<img  alt="" src="http://localhost:9000/manwol/resources/images/product/만월회 음료 원액 베이스 10종(2개입,12개입).jpg" style="width: 45px; height: 45px;">
					</a>
				</div>
				<div id="product2">
					<a href="http://localhost:9000/manwol/product_detail">
						<span>만월회 음료 원액 베이스 10종(...</span>
					</a>
				</div>
			</div>
			
			<div class="comment1">
				<p style="font-size:14px;">
					<span style="color: black;">댓글 </span><span style="color:#0042A9;">0</span>
					<button class="cw_btn">댓글쓰기</button>
				</p>	
			</div>
			
			<div class="comment2">
				<textarea id="comment2_te" placeholder="댓글" rows="30" cols="1000"></textarea>
				<p>
				<label class="filebutton">
					<img src="http://localhost:9000/manwol/resources/images/review/image.png"/>
					<span><input type="file" id="myfile" name="myfile"></span>
				</label>				
				<button type="button" class="w_btn" >작성</button>
				</p>
			</div>
			</div>
		</div>
	</div>
		</div>
	</div>
</div>	
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>