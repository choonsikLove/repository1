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
							<div class="contents_detail">
								<table>
									<tr>
										<td>
											<div>
												<p style="margin-bottom: 20px; margin-top: 30px;">
													<a href="http://localhost:9000/manwol/recipe10" style="font-size: 16px; color: #0042A9">리얼딸기&nbsp;</a> 
													리얼딸기 4가지 응용버전(베리말차,베리밀크티,딸기 샐러드,딸기빵)
												</p>	
												<p style="margin-bottom: 1px;"><a href="http://localhost:9000/manwol/recipe"><small>레시피북</small></a></p>	
											</div>		
										</td>
									</tr>	
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="contents_detail2">
								<table class="c2">
									<tr>
										<td>
											<div style="margin-top: 50px;">
												<img alt="리얼딸기1"
													src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg">
												<br> <img alt="리얼딸기2"
													src="http://localhost:9000/manwol/resources/images/review/리얼딸기2.png">
												<br>
												<p>
													<span class="material-symbols-outlined"
														style="font-size: 20px;">favorite</span>2&emsp; <span
														class="material-symbols-outlined" style="font-size: 20px">chat_bubble</span>0
												</p>
											</div>
	
											<div class="commentchang">
												<div class="detail_input">
													<textarea class="comment" placeholder="댓글을 남겨 주세요"></textarea>
												</div>
												<div>
													<div class="image-upload" style="display: flex;">
														<label class="filebutton"> <img
															src="http://localhost:9000/manwol/resources/images/review/image.png" />
															<span><input type="file" id="myfile" name="myfile"></span>
														</label>
													</div>
													<div style="float: right; margin-left: 10%;">
														<button type="submit" class="w_btn">작성</button>
													</div>
												</div>
											</div>
										</td>
									</tr>	
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="contents_detail3" style="margin-top: 20px;">
								<table class="c3" style="float: left; border-bottom: 1.3px solid lightgray;">																
									<tr>	
										<td>
											<div style="margin-top: 5px; margin-bottom: 5px;">
												<a>∧&emsp;악마초코 트리플초코스콘</a>
											</div>
										</td>
									</tr>										
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="contents_detail4">
								<table class="c4" style="float: left; border-bottom: 1.3px solid lightgray;">				
									<tr>	
										<td>
											<div style="margin-top: 5px; margin-bottom: 5px;">
												<a>∨&emsp;슈렉라떼(말차에 밀크티 추가)</a>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="contents_detail5" style="margin-top: 12px;">
								<table class="c5">	
									<tr>
										<td>
											<div>		
												<button class="list_btn">목록</button>
											</div>
										</td>
									</tr>	
									<tr>		
										<td>
											<div>		
												<button class="write_btn">글쓰기</button>
											</div>
										</td>
									</tr>	
								</table>
							</div>
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