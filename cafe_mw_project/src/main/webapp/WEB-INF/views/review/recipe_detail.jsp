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
	
.c2{width: 100%;}
.c3{width: 100%;}
.c4{width: 100%;}
.c5{width: 100%;}

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

	

/*레시피 디테일 타이틀 부분*/
.contents {
	  float: left;
	  justify-content: left; 
	  align-items: left;w
	  margin-bottom: 20px;
}

.contents small{color:#8C8C8C;}
.contents small:hover{color: black;}


/*댓글창*/
.contents2 {border-top: 1.3px solid lightgray;}


.input{ width:100%; 
		height: 120px;
		
		}	

.comment{
		width: 100%; 
		height: 120px;
		display: flex;
		border: solid 1px Lightgray;
		}
		

		
	
label.filebutton {
    width:25px;
    height:25px;
    overflow:hidden;
    position:relative;
    background-color:white;
    margin-top: -2.5%;
    margin-left: 1%;
}

label span input {
    z-index: 999;
    line-height: 0;
    font-size: 50px;
    position: absolute;
    top: -2px;
    left: -700px;
    opacity: 0;
    filter: alpha(opacity = 0);
    -ms-filter: "alpha(opacity=0)";
    cursor: pointer;
    _cursor: hand;
    margin: 0;
    padding:0;
}	
	
	
/*작성 버튼*/
.w_btn	{
	display: block;
	background:  #0A2155;
	border: 0.03px solid #BDBDBD;
	font-size: 15px;
	color: white;
	cursor: pointer;
	width: 90px;
	padding: 10px 5px;
	margin-bottom: 10px;
	margin-top: -45%;
	margin-right: -20%;
	}
		
.w_btn:hover{
	opacity: 0.7;
	filter:alpha(opacity=75);
}	
	


/*이전목록 다음목록*/
.contents3 {cursor: pointer; border-top: 1.3px solid lightgray;}
.contents4 {cursor: pointer;}

.c3:hover{background-color: #F6F6F6;}
.c4:hover{background-color: #F6F6F6;}


/*목록 버튼*/
.list_btn{
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

.list_btn:hover{
	opacity: 0.7;
	filter:alpha(opacity=75);
}

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
	float: right;
}

.write_btn:hover{
	opacity: 0.7;
	filter:alpha(opacity=75);
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
									<td>
										<div>
											<p style="margin-bottom: 20px; margin-top: 30px;">
												<a href="http://localhost:9000/manwol/recipe10" style="font-size: 16px; color: #0042A9">리얼딸기&nbsp;</a> 
												리얼딸기 4가지 응용버전(베리말차,베리밀크티,딸기 샐러드,딸기빵)
											</p>	
											<p style="margin-bottom: 1px;"><a href="http://localhost:9000/manwol/recipe"><small>레시피북</small></a></p>	
										</div>		
									</td>
								</table>
							</div>
						</td>
					</tr>
					
			
					
					<tr>
						<td>
							<div class="contents2">
								<table class="c2">
									<td>
										<div style="margin-top: 50px;">											
											<img alt="리얼딸기1" src="http://localhost:9000/manwol/resources/images/review/리얼딸기1.jpg">
											<br>
											<img alt="리얼딸기2" src="http://localhost:9000/manwol/resources/images/review/리얼딸기2.png">
											<br>
											<p>
												<span class="material-symbols-outlined" style="font-size: 20px;">favorite</span>2&emsp;
												<span class="material-symbols-outlined" style="font-size: 20px">chat_bubble</span>0
											</p>
										</div>
										
										<div class="commentchang">	
											<div class="input">								
													<textarea class="comment"  placeholder="댓글을 남겨 주세요"></textarea>																														
											</div>
											<div>		
													<div class="image-upload" style="display: flex;">			
														<label class="filebutton">
															<img src="http://localhost:9000/manwol/resources/images/review/image.png"/>
															<span><input type="file" id="myfile" name="myfile"></span>
														</label>
													</div>
													<div style="float: right; margin-left: 10%;">	
														<button type="submit" class="w_btn">작성</button>
													</div>														
											</div>	
										</div>
									</td>
								</table>
							</div>
						</td>
					</tr>

								
					
					<tr>
						<td>
							<div class="contents3" style="margin-top: 20px;">
								<table class="c3" style="float: left; border-bottom: 1.3px solid lightgray;">																
									<td>
										<div style="margin-top: 5px; margin-bottom: 5px;">
											<a>∧&emsp;악마초코 트리플초코스콘</a>
										</div>
									</td>									
								</table>
							</div>
						</td>
					</tr>
					
					
					<tr>
						<td>
							<div class="contents4">
								<table class="c4" style="float: left; border-bottom: 1.3px solid lightgray;">				
									<td>
										<div style="margin-top: 5px; margin-bottom: 5px;">
											<a>∨&emsp;슈렉라떼(말차에 밀크티 추가)</a>
										</div>
									</td>
								</table>
							</div>
						</td>
					</tr>
					 
					
					<tr>
						<td>
							<div class="contents5" style="margin-top: 12px;">
								<table class="c5">	
									<td>
										<div>		
											<button class="list_btn">목록</button>
										</div>
									</td>
											
									<td>
										<div>		
											<button class="write_btn">글쓰기</button>
										</div>
									</td>
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
