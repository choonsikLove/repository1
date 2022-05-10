<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
@charset "UTF-8";

*{margin: 0 ; padding: 0;}
	li{list-style-type:none}
	
body,html{
    width: 100%;
    
}
table{
	margin-right: auto;
	margin-left: auto;
}	

/*리뷰 문구*/
.recipe_text{
	text-align: center;
	margin: 50px 0;
}	

/*카테고리*/
.category {
      display: flex;
	  justify-content: center;
	  margin-bottom:10px;
	  padding: 45px 0 10px 0;	  
}   
      
.category span {
      padding:15px;
      color: gray;
      font-size: 14px;    
}
	
/*카테고리 밑줄 들어가게*/
.category a{ 
		color: Black; 
		text-decoration:underline;
}
.category_line span{
		color: #004a98; 
		text-decoration:underline;"
}			
.category span:hover{
		color: black;
}
	

/*리뷰 이미지*/	
.contents {
	  display: flex;
	  justify-content: center; 
	  align-items: center;
	  margin: 20px 0px;
}
.contents1{
		margin: 20px 10px 20px 10px;
}
.contents2{
		margin: 20px 10px 35px 10px;
}	
.contents1 strong{font-size: 14px; color: #004a98; font-weight: bold;}	
.contents1 span{color: black; font-size: 14px;}
.contents2 strong{font-size: 14px; color: #004a98; font-weight: bold;}	
.contents2 span{color: black; font-size: 14px;}
.contents_name{padding: 13px 0;}

/*위시리스트*/	
.wish_list{margin: 10px 0 20px 0;}
.wish_list1{margin: 1000px 0 20px 0;}
		
.material-symbols-outlined{
	  font-variation-settings:
	  'FILL' 0,
	  'wght' 300,
	  'GRAD' 0,
	  'opsz' 30;
}
.moon{cursor: pointer;}

/*검색바*/
.search{width:100%;}
.search_f{border-bottom: 1.3px solid black; margin: 0 0 10px 535px;} 
.search_i{border:none; margin: 10px 10px 10px 0px;}
.search_btn{border: none; background-color: white;} 

/*글쓰기 버튼*/
.write_btn{
	display: block;
	background:  #0A2155;
	border: 0.03px solid #BDBDBD;
	font-size: 15px;
	color: white;
	cursor: pointer;
	width: 110px;
	padding: 10px 5px;
	margin-bottom: 10px;
}
.write_btn:hover{
	opacity: 0.7;
	filter:alpha(opacity=75);
}
.page{cursor:pointer; font-style: normal;}
.page:hover {
	color: Black; 
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<table class="content" style="table-layout: fixed;">
		<tr>
			<td>
				<table>
					<tr>
						<td>
							<div class="recipe_text">
								<h3>보람달 뜨는 날, 금손들의 모임</h3>
								<p>이렇게라도 활용이 가능하다고👀?</p>
								<p>천재 고객님들이 만월회 원액으로 만든 레시피를 소개합니.</p>
							</div>
						</td>
					</tr>
						
					<tr>
						<td>
							<div>
								<ul class="category">
									<li class="category_line"><a href="http://localhost:9000/manwol/recipe"><span>ALL</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe1"><span>밀크티</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe2"><span>말차</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe3"><span>악마초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe4"><span>단호박</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe5"><span>민트초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe6"><span>흑임자</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe7"><span>쑥</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe8"><span>그린티초코</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe9"><span>자몽샤워</span></a></li>
									<li><a href="http://localhost:9000/manwol/recipe10"><span>리얼딸기</span></a></li>
								</ul>
							</div>
						</td>
					</tr>

					<tr>
						<td>
							<div class="contents">
								<table>
									<tr>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/product_detail"> 
													<img alt="리얼딸기"
													src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
													height="400px" width="400px">
												</a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/product_detail"><strong>리얼딸기</strong><span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러</span> <span><br>드, 딸기빵)</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">2</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>

										<td>
											<div class="contents2">
												<a href="#"> 
													<img alt="슈렉라떼"
													src="http://localhost:9000/manwol/resources/images/review/슈렉라떼2.jpg"
													height="400px" width="400px">
												</a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/product_detail"> <strong>말차</strong> <span>슈렉라떼(말차에 밀크티 추가)</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">5</span>
													</a>
												</div>
												<img class="moon" alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
										<td>
											<div class="contents2">
												<a href="#">
													<img class="re" alt="트리플초코스콘"
													src="http://localhost:9000/manwol/resources/images/review/트리플초코스콘1.jpg"
													height="400px" width="400px"></a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/product_detail"><strong>악마초코</strong> <span>트리플초코스콘</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">27</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="contents1">
												<a href="#">
													<img alt="밀콜추"
													src="http://localhost:9000/manwol/resources/images/review/밀콜추1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>밀크티</strong> <span>밀콜추(밀크티에 콜드블루 추가)</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">3</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="">
													<img  alt="스콘"
													src="http://localhost:9000/manwol/resources/images/review/스콘1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>그린티초코</strong> <span>스콘</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">14</span>
													</a>
													<a>
														<span class="material-symbols-outlined" style="font-size: 18px; cursor: pointer; color: #004a98; margin-left: 8px;">chat_bubble</span>
														<span style="font-size: 15px; color: #004a98;">1</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>

										<td>
											<div class="contents1">
												<a href="#">
													<img alt="마들렌"
													src="http://localhost:9000/manwol/resources/images/review/마들렌1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>쑥</strong> <span>마들렌</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">3</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="contents1">
												<a href="#">
													<img alt="초코결스콘"
													src="http://localhost:9000/manwol/resources/images/review/초코결스콘2.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>악마초코</strong> <span>초코결스콘</span></a> 
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined"style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">9</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>

										<td>
											<div class="contents1">
												<a href="#">
													<img alt="구겔호프"
													src="http://localhost:9000/manwol/resources/images/review/구겔호프1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>밀크티</strong> <span>구겔호프</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">4</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="#">
													<img alt="크림 파스타"
													src="http://localhost:9000/manwol/resources/images/review/크림 파스타1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>단호박</strong> <span>크림 파스타</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">21</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/product_group_order">
													<img alt="팥빙수"
													src="http://localhost:9000/manwol/resources/images/review/팥빙수1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>말차</strong> <span>팥빙수</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">16</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/product_group_order">
													<img alt="바스크 치즈케이크"
													src="http://localhost:9000/manwol/resources/images/review/바스크 치즈케이크1.jpg"
													height="400px" width="400px">
												</a>
												<p>
													<a href="#"> <strong>단호박</strong> <span>바스크 치즈케이크</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">54</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/product_group_order">
													<img alt="프라푸치노"
													src="http://localhost:9000/manwol/resources/images/review/프라푸치노1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="#"> <strong>민크초코</strong> <span>프라푸치노</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">4</span>
													</a>
												</div>
												<img alt="moon"
													src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
													width="38px" class="moon">
											</div>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<table class="search">
								<tr>
									<td style="display: flex;">
										<div>
											<form action="" class="search_f">
												<input  type="text" placeholder=" Search" class="search_i">
												<button  type="submit" class="search_btn"><img alt="돋보기" src="http://localhost:9000/manwol/resources/images/review/search.png" style="width: 25px;"></button>
											</form>
										</div>
									</td>
									<td align="right">
										<div>		
											<button class="write_btn">글쓰기</button>
										</div>
									</td>
								</tr>
							</table>
						</td>
					</tr>					
					<tr>
						<td>
							<table>
								<tr>
									<td>
										<div style=" margin-top: 10px; text-align: center; color: #949494;">
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
							</table>
						</td>
					</tr>
					<tr>
						<td>
							<table>
									
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<!--  footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>