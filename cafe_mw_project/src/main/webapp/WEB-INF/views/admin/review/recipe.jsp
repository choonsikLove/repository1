<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<div class="recipeDiv">
			<h2>레시피북 관리</h2>
			<ul id="recipeTypes">
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
			
			<div>
				<table>
					<tr>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail" target="_blank" rel="noreferrer noopener"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span>
								<br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
					</tr>
					<tr>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
					</tr>
					<tr>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
					</tr>
					<tr>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
						<td>
							<div class="recipeContents">
								<a href="http://localhost:9000/manwol/recipe_detail"> 
									<img alt="레시피북이미지"
										src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg"
										height="400px" width="400px"><br>
									<strong>리얼딸기</strong>
									<span>리얼딸기 4가지 응용버전(베리말차, 베리밀크티, 딸기 샐러드, 딸기빵)</span>
								</a>
								<br>
								<span class="material-symbols-outlined" style="font-size: 18px; color: #004a98">favorite</span>
								<span style="font-size: 15px; color: #004a98;">2</span><br>
								<a href="http://localhost:9000/manwol/recipe_detail">
									<img alt="moon"
									src="http://localhost:9000/manwol/resources/images/review/moon.jpg"
									width="38px" class="moon">
								</a>
							</div>
							<button class='deleteRecipe'>삭제</button>
							<button class='hideRecipe'>숨김</button>
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<form>
								<input type="text" placeholder="Search">
								<span class="material-symbols-outlined">search</span>
							</form>
						</td>
					</tr>	
					<tr>
						<td colspan="3">&lt; 1 2 3 &gt;</td>
					</tr>
				</table>
			</div>
		
		</div>	
	</div>
</div>	
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>