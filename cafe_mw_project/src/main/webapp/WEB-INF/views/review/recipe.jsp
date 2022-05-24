<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe.css">
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
								<p>천재 고객님들이 만월회 원액으로 만든 레시피를 소개합니다.</p>
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
												<a href="http://localhost:9000/manwol/recipe_detail"> 
													<img alt="리얼딸기"
													src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
													height="400px" width="400px">
												</a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>리얼딸기</strong><span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러</span> <span><br>드, 딸기빵)</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">2</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>

										<td>
											<div class="contents2">
												<a href="http://localhost:9000/manwol/recipe_detail"> 
													<img alt="슈렉라떼"
														src="http://localhost:9000/manwol/resources/images/review/슈렉라떼2.jpg"
														height="400px" width="400px">
												</a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>말차</strong> <span>슈렉라떼(말차에 밀크티 추가)</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">5</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img class="moon" alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>
										<td>
											<div class="contents2">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img class="re" alt="트리플초코스콘"
													src="http://localhost:9000/manwol/resources/images/review/트리플초코스콘1.jpg"
													height="400px" width="400px"></a>
												<p class="contents_name">
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>악마초코</strong> <span>트리플초코스콘</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">27</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>		
											</div>
										</td>
									</tr>

									<tr>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="밀콜추"
													src="http://localhost:9000/manwol/resources/images/review/밀콜추1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>밀크티</strong> <span>밀콜추(밀크티에 콜드블루 추가)</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">3</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img  alt="스콘"
													src="http://localhost:9000/manwol/resources/images/review/스콘1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>그린티초코</strong> <span>스콘</span></a>
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
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>

										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="마들렌"
													src="http://localhost:9000/manwol/resources/images/review/마들렌1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>쑥</strong> <span>마들렌</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">3</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="초코결스콘"
													src="http://localhost:9000/manwol/resources/images/review/초코결스콘2.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>악마초코</strong> <span>초코결스콘</span></a> 
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined"style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">9</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>

										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="구겔호프"
													src="http://localhost:9000/manwol/resources/images/review/구겔호프1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>밀크티</strong> <span>구겔호프</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">4</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="크림 파스타"
													src="http://localhost:9000/manwol/resources/images/review/크림 파스타1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>단호박</strong> <span>크림 파스타</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">21</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="팥빙수"
													src="http://localhost:9000/manwol/resources/images/review/팥빙수1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>말차</strong> <span>팥빙수</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">16</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="바스크 치즈케이크"
													src="http://localhost:9000/manwol/resources/images/review/바스크 치즈케이크1.jpg"
													height="400px" width="400px">
												</a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>단호박</strong> <span>바스크 치즈케이크</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">54</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
											</div>
										</td>
										<td>
											<div class="contents1">
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="프라푸치노"
													src="http://localhost:9000/manwol/resources/images/review/프라푸치노1.jpg"
													height="400px" width="400px"></a>
												<p>
													<a href="http://localhost:9000/manwol/recipe_detail"> <strong>민크초코</strong> <span>프라푸치노</span></a>
												</p>
												<div class="wish_list">
													<a href="#"> 
														<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
														<span style="font-size: 15px; color: #004a98;">4</span>
													</a>
												</div>
												<a href="http://localhost:9000/manwol/recipe_detail">
													<img alt="moon"
														src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
														width="38px" class="moon">
												</a>	
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
											<a href='recipe_insert'><button class="write_btn">글쓰기</button></a>
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