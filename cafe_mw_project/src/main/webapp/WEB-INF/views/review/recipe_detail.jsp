<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.sandbox.google.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/recipe.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/recipe.js"></script>
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
                        <h3>보름달 뜨는 날, 금손들의 모임</h3>
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
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=밀크티"><span>밀크티</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=말차"><span>말차</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=악마초코"><span>악마초코</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=단호박"><span>단호박</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=민트초코"><span>민트초코</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=흑임자"><span>흑임자</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=쑥"><span>쑥</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=그린티초코"><span>그린티초코</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=자몽샤워"><span>자몽샤워</span></a></li>
                           <li><a href="http://localhost:9000/manwol/recipe?rcategory=리얼딸기"><span>리얼딸기</span></a></li>
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
                                    <c:choose>
                                       <c:when test="${vo.rcategory == '밀크티' }">
                                          <a href="http://localhost:9000/manwol/recipe1" style="font-size: 16px; color: #0042A9">
                                             밀크티&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '말차' }">
                                          <a href="http://localhost:9000/manwol/recipe2" style="font-size: 16px; color: #0042A9">
                                             말차&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '악마초코' }">
                                          <a href="http://localhost:9000/manwol/recipe3" style="font-size: 16px; color: #0042A9">
                                             악마초코&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '단호박' }">
                                          <a href="http://localhost:9000/manwol/recipe4" style="font-size: 16px; color: #0042A9">
                                             단호박&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '민트초코' }">
                                          <a href="http://localhost:9000/manwol/recipe5" style="font-size: 16px; color: #0042A9">
                                             민트초코&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '흑임자' }">
                                          <a href="http://localhost:9000/manwol/recipe6" style="font-size: 16px; color: #0042A9">
                                             흑임자&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '쑥' }">
                                          <a href="http://localhost:9000/manwol/recipe7" style="font-size: 16px; color: #0042A9">
                                             쑥&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '그린티초코' }">
                                          <a href="http://localhost:9000/manwol/recipe8" style="font-size: 16px; color: #0042A9">
                                             그린티초코&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:when test="${vo.rcategory == '자몽샤워' }">
                                          <a href="http://localhost:9000/manwol/recipe9" style="font-size: 16px; color: #0042A9">
                                             자몽샤워&nbsp;
                                          </a> 
                                       </c:when>
                                       <c:otherwise>
                                          <a href="http://localhost:9000/manwol/recipe10" style="font-size: 16px; color: #0042A9">
                                             리얼딸기&nbsp;
                                          </a> 
                                       </c:otherwise>
                                    </c:choose>
                                       ${vo.rtitle }
                                    </p>   
                                    <p style="margin-bottom: 1px;">
                                       <a href="http://localhost:9000/manwol/recipe">
                                          <small>레시피북</small>
                                       </a>
                                    </p>   
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
                                 <hr>
                                 <div style="margin-top: 50px;">
                                    <div>
                                       <img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile1}">
                                       <p>${vo.rcontent }</p>
                                       <c:if test="${vo.rsfile2 != null}">
                                          <img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile2}">
                                       </c:if>
                                       <c:if test="${vo.rsfile3 != null}">
                                          <img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile3}">
                                       </c:if>
                                       <c:if test="${vo.rsfile4 != null}">
                                          <img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile4}">
                                       </c:if>
                                       <c:if test="${vo.rsfile5 != null}">
                                          <img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile5}">
                                       </c:if>
                                       <c:if test="${vo.rsfile6 != null}">
                                          <img src="http://localhost:9000/manwol/resources/upload/${vo.rsfile6}">
                                       </c:if>
                                    </div>
                                    <p>
                                       <span class="material-symbols-outlined"
                                          style="font-size: 20px;">favorite</span>
                                       <span>2&emsp;</span>   
                                       <span class="material-symbols-outlined" style="font-size: 20px">chat_bubble</span>
                                       <span id="reply_count">${reply_list.size() }</span>
                                    </p>
                                 </div>
                              </td>
                           </tr>      
                           <tr>
                              <td>
                                 <div class="commentchang">
                                    <p>댓글</p>
                                    <ul class="reply_ul">
                                       <c:forEach var="reply" items="${reply_list}">
                                          <li class="reply_li">
                                             <p>${reply.reply_content }</p>
                                             <c:if test="${reply.reply_sfile != null }">
                                                <img src="http://localhost:9000/manwol/resources/upload/${reply.reply_sfile }" width='100px' height='100px'>
                                             </c:if>
                                          </li>
                                       </c:forEach>
                                    </ul>
                                    <form id="fform" method="post" enctype="multipart/form-data">
                                       <div class="detail_input">
                                          <input type="hidden" value="${vo.rid }" name="f_id">
                                          <textarea class="comment" placeholder="댓글을 남겨 주세요" name="reply_content"></textarea>
                                       </div>
                                       <div>
                                          <div class="image-upload" style="display: flex;">
                                             <label class="filebutton" for="myfile"> 
                                                <img src="http://localhost:9000/manwol/resources/images/review/image.png" />
                                                <input type="file" id="myfile" name="r_file" style="visibility: hidden;">
                                             </label>
                                             
                                          </div>
                                          <div style="float: right; margin-left: 10%;">
                                             <button type="button" class="w_btn">작성</button>
                                          </div>
                                       </div>
                                    </form>
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
                                    <c:choose>
                                       <c:when test="${vo.next_id != null }">
                                          <a href="http://localhost:9000/manwol/recipe_detail?rid=${vo.next_id }">
                                             ∧&emsp;${vo.next_title }
                                          </a>
                                       </c:when>
                                       <c:otherwise>
                                          ∧&emsp;다음 글이 없습니다.
                                       </c:otherwise>
                                    </c:choose>
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
                                    <c:choose>
                                       <c:when test="${vo.pre_id != null }">
                                          <a href="http://localhost:9000/manwol/recipe_detail?rid=${vo.pre_id }">
                                             ∨&emsp;${vo.pre_title }
                                          </a>
                                       </c:when>
                                       <c:otherwise>
                                          ∨&emsp;이전 글이 없습니다.
                                       </c:otherwise>
                                    </c:choose>
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
                                    <a href="http://localhost:9000/manwol/recipe">
                                       <button class="list_btn">목록</button>
                                    </a>
                                 </div>
                              </td>    
                              <td>
                                 <div>   
                                    <a href='recipe_insert'>   
                                       <button class="write_btn">글쓰기</button>
                                    </a>
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