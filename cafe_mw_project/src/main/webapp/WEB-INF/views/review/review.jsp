<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<style type="text/css">
body, html {
   width: 100%;
}

table {
   margin-right: auto;
   margin-left: auto;
}





.review{text-align: left; width:1270px; border-spacing:0;}
.review_title{margin: 50px 0;}
.rcategory{width: 100%; padding-bottom: 20px;}
.rcategory a{color: black;}
.rcategory a:hover {cursor: pointer; color:#0042A9;} 
.rcategory a:active{color:#0042A9;}


.mini1 td>div{display: flex;}
.mini1 div{margin-right:10px; margin-top: 10px;}
.mini1 a {color:#0042A9;}
.mini1 .id{margin-top: 10px; margin-bottom: 10px;}
.mini1 img{margin-top: 10px;}

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
                  <a href="#">전체 (13422)</a>&ensp; | &ensp;<a href="#">포토구매평 (7380)</a>                  
                  </td>
               </tr>
               
               
               
               <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
              
              <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
              
              
             <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
              
                 <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
               
               
               <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
               
                 <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
               
               
                  <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
               
               
                <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
               
                  <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
                        <p class="id">goun****</p>
                     </div>
                  </td>
               </tr>
               
                  <tr class="review_mini">
                  <td class="mini1" style="display: flex;">
                     <div>                                        
                        <img alt="포토구매평1" src="http://localhost:9000/manwol/resources/images/review/포토구매평1.png" width="75px" height="75px">
                     </div>
                     <div>   
                        <a href="#"><small>[첫 구매고객 500원] 만월회 음료 원액 베이스 10종</small></a>
                        <p>밀크티는 아직 먹어보기 전인데 기대됩니다<img alt="n" src="http://localhost:9000/manwol/resources/images/review/N.png"></p>
                        <p><small>밀크티는 아직 먹어보기 전인데 기대됩니다</small></p> 
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
               
                     <td style="text-align: center;" >
                        
                        <div style="margin-top: 10px; margin-bottom:80px; text-align: center; color: #949494;">
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
      <tr>   




   </table>



   <!--  footer -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>