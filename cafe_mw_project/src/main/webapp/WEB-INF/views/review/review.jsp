<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/review.js"></script>
<style type="text/css">
/* 공통 부분*/
* {
	padding: 0;
	margin: 0;
}

body, html {
   width: 100%;
}
li {
	list-style: none;
}
table {
   margin-right: auto;
   margin-left: auto;
}

.review{text-align: left; width:1270px; border-spacing:0;}
.review_title{margin: 50px 0;}
.rcategory{width: 100%; padding-bottom: 20px;}
.rcategory .a1{color:#0042A9; cursor: pointer;}
.rcategory .a2{color:#0042A9;  cursor: pointer;}
.a1:hover{color:#0042A9; cursor: pointer;}
.a2:hover{color: black;  cursor: pointer;}

.review td{ border-bottom: 1px solid #BDBDBD;}
.strong{font-size: 18px; font-weight: bold;}
.review span{
   border-radius:100px; 
   font-size: 13px; 
    background-color:#8BBCFF; 
    padding: 2px; 
    color: black; 
    margin: 0 5px;
    font-weight: bold;
}

.mini1{padding: 12px 20px;}
.mini_1 {margin: 85px; color: #0042A9}
.mini1_t{margin: 4px 10px 0 10px;}
.mini1_t1{padding:  12px 0 0 0; color:#B8B8B8;}
.id{padding: 0 0 0px 87px; font-size: 13px; color:#6F6F6F; margin-top: -9px;}


.page{cursor:pointer; font-style: normal;}
.page:hover {
	color: Black; 
}
.page_number{
	margin-top: 10px; margin-bottom: 80px; text-align: center; color: #949494;
}

/*사용자사진,별점,아이디*/
.desc_header{
	display: flex;  
	padding-bottom: 15px; 
	border-bottom: 1px solid #BDBDBD;
}
#user{width: 50px; height: 50px;}
#user img{width: 40px; height: 40px; border-radius: 100%;}
.star_id{margin-left:5px;}
.star_img{color: red; margin-bottom:5px; font-size: 18px; cursor: context-menu;}
#id{font-size: 13px; color: #BDBDBD; margin-left: 3px;}

label.filebutton {
    width:25px;
    height:25px;
    overflow:hidden;
    position:relative;
    background-color:white;
    padding-top:5px;
    margin-left: 2%;
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


/*모달창1*/
.modal{
	background: rgba(0, 0, 0, 0.4);
	top: 0;
	left: 0;
	position: fixed;
	width: 100%; height : 100%;
	overflow: hidden;
	padding-top: 10px;
	z-index: 1000;
	display: none;
	overflow-y: initial;
}
.modal_inner{	
	width: 550px;
	background-color: #fff;
	position: relative;
	margin: 50px auto;
	padding: 20px;
	border-radius: 5px;sk
}


/*닫기 버튼*/
.close_modal{
	position: relative;
	bottom:7px;
	left: 390px;
	border: none;
	background-color: transparent;
	font-size: 45px;
	color: #999;
	cursor: pointer;
} 
.close_modal:hover{
	color: #000;
} 

/*옵션,리뷰내용*/
.option{margin: 20px 0 25px 0;}
#option1{padding-bottom: 10px; color: #BDBDBD;}
#option1 small{font-size: 12px;}
#option2{font-size: 15px;}
#option2 p{padding-bottom: 6px;}

/*상품*/
.product{border: 1.3px solid #BDBDBD;; display: flex;}
#product1{border: 1px solid #BDBDBD;; width: 45px; height: 45px;}
#product2{padding:14px 0 0 13px; font-size: 15px; color: #000;}
#product2 a span{color: black;}

/*댓글창,버튼*/
.comment1{margin: 20px 0;}
.comment2{border: 0.03px solid #BDBDBD; height: 140px;}
#comment2_t{height:80px; width: 523px; border: none; padding:15px 0 0 10px;}


.cw_btn{margin-left: 500px; 
		border: none; 
		background-color: white; 
		color:#0042A9;}

.w_btn{
	background: #0A2155;
	font-size: 13px;
	color: white;
	cursor: pointer;
	position:absolute;
	width: 50px;
	padding:5px 10px 5px 10px; margin: 0 0 0 460px	
}

</style>
</head>
<body>
   <!-- header -->
   <jsp:include page="../header.jsp"></jsp:include>

   <!-- content -->
   
   <table>
      <tr>
         <td>
         <div class="review" >
            <table  class="review">
               <tr>
                  <td style="border: none;">
                     <h2 class="review_title" style="text-align: center;">Review</h2>                     
                  </td>
               </tr>
               <tr>
                  <td class="rcategory">
                  <a class="a1" href="http://localhost:9000/manwol/review">전체 (13422)</a>&ensp; | &ensp;<a class="a2" href="http://localhost:9000/manwol/review2" style="color:#747474;">포토구매평 (7380)</a>                  
                  </td>
               </tr>
               
               
               
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
              
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
               <tr class="review_mini">
                  <td class="mini1">
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
                  </td>
               </tr>
            </table>
            </div>
         </td>
      </tr>   
      <tr>
         <td>
         	<table style="width: 1270px;">
					<tr>
						<td style="text-align: center;">
							<div class="page_number">
								<p>
									<span style="cursor: no-drop;"><</span> 
									<span class="page">&emsp;1&emsp;</span>
									<span class="page">2&emsp;</span> 
									<span class="page">3&emsp;</span>
									<span class="page">4&emsp;</span> 
									<span class="page">5&emsp;</span>
									<span class="page">6&emsp;</span> 
									<span class="page">7&emsp;</span>
									<span class="page">8&emsp;</span> 
									<span class="page">9&emsp;</span>
									<span style="cursor: no-drop;">></span>
								</p>
							</div>
						</td>
					</tr>
				</table>
			</td>
   		</tr>   
   </table>
   
   
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
				<textarea id="comment2_t" placeholder="댓글" rows="30" cols="1000"></textarea>
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

   <!--  footer -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>