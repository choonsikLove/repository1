<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet"
   href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/review.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/review.css">
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
                  <a class="a1" href="http://localhost:9000/manwol/review">전체 (${dbCount1 })</a>&ensp; | &ensp;<a class="a2" href="?voption=o" style="color:#747474;">포토구매평 (${dbCount2 })</a>                  
                  </td>
               </tr>
               
               <c:forEach var="vo" items="${list}">
	               <tr class="review_mini">
	                  <td class="mini1">
	                     <div>   
	                     	 <a href="http://localhost:9000/manwol/product_detail"><small class="mini_1">${vo.pname }</small></a>  
	                     	 <div style="display: flex;" class="open_modal">
	                     	 	<div>
	                     	 		<img alt="" src="http://localhost:9000/manwol/resources/upload/${vo.vsfile }" width="75px" height="75px">
	                     	 	</div>
	                     	 	<div class="mini1_t">
	                     	 		<p>${vo.vcontent }</p>
	                        		<p class="mini1_t1"><small>${vo.vcontent }</small></p> 
	                        	</div>
	                     	 </div> 
	      					<p class="id">${vo.memail }</p>
	                     </div>
	                  </td>
	               </tr>
				   <!-- 모달창 -->
					<div class="modal">
						<div class="modal_inner">
							<div class="desc">
								<div class="desc_header">
									<div id="user">
										<img alt=""
											src="http://localhost:9000/manwol/resources/upload/${vo.msprofile }">
									</div>
									<div class="star_id">
										<p class="star_img">${vo.vscore }
										
										
										</p>
										<p id="id">${vo.memail }</p>
									</div>
									<button class="close_modal">&times;</button>
								</div>
				
								<div class="option">
									<div id="option1">
										<small>[옵션] 종류: 밀크티/용량: 12개입 (-17%)</small>
									</div>
									<div id="option2">
										<p>${vo.vcontent}</p>
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
										<a href="http://localhost:9000/manwol/product_detail">
										<span>${vo.pname }</span>
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
	           </c:forEach>
               
               
            </table>
            </div>
         </td>
      </tr>   
      <tr>
         <td>
         	<table style="width: 1270px;">
				<jsp:include page="recipe_page.jsp"></jsp:include>
			</table>
			</td>
   		</tr>   
   </table>
   
   

	<!--  footer -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>