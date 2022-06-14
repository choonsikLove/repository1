<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/payment.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/payment.css">
</head>
<body>
   <!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>

   <!-- content -->
   <div class="payment">
      <h2>결제하기</h2>
      <form name="payment_form" action="order_payment" method="post">
      <table>
         <tr>
            <td style="display: flex;">
               <table class="payment_content1">
                  <tr>
                     <td>
                        <table class="payment_content1_1">
                           <tr>
                              <td>
                                 <h4>주문 상품 정보</h4>
                                 <div class="payment_content1_1_line">
                                    <div>
                                    <c:forEach var="vo" items="${list }">
                                       <div class="payment_product">
                                          <div>
                                             <a href="http://localhost:9000/manwol/product_detail?pnum=${vo.c_pnum }">
                                                <img alt="만월회 5종 선물세트"
                                                src="http://localhost:9000/manwol/resources/upload/${vo.pmainsfile }"
                                                width="100px;" height="100px;">
                                             </a>
                                          </div>
                                          <div class="payment_product1">
                                             <div>
                                                <a href="http://localhost:9000/manwol/product_detail?pnum=${vo.c_pnum }">
	                                                <span style="color: black; font-size: 16.5px;">
	                                                	${vo.pname }
	                                                </span>
                                                </a>
                                                <p>
                                                   <a href="http://localhost:9000/manwol/product_detail?pnum=${vo.c_pnum }">
                                                      <span> <small>필수</small>&ensp;${vo.c_qnt }개
                                                   </span>
                                                   </a>
                                                </p>
                                                <p class="payment_price">
                                                   <a href="http://localhost:9000/manwol/product_detail?pnum=${vo.c_pnum }">
                                                   	<c:choose>
                                                   		<c:when test="${vo.psaleprice != 0 }">
															<strong>${vo.psaleprice * vo.c_qnt }</strong>
                                                   		</c:when>
                                                   		<c:otherwise>
															<strong>${vo.pprice * vo.c_qnt }</strong>
                                                   		</c:otherwise>
                                                   	</c:choose>
                                                   </a>
                                                </p>
                                             </div>
                                          </div>
                                       </div>
                                       <input type="hidden" name="ocid" value = "${vo.cid }">
                                       <input type="hidden" name="oproduct" value = "${vo.c_pnum }">
                                    </c:forEach>
                                    </div>
                                    <div class="payment_price1">
                                       <p>
                                          배송비 <strong>3,000원</strong>
                                       </p>
                                    </div>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 1번째 1번째  table -->
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <table class="payment_content1_2">
                           <tr>
                              <td>
                                 <h4>주문자 정보</h4>
                                 <div>
                                    <div class="payment_guide">
                                       <p>⚠️ 무통장 입금 안내</p>
                                       <p>무통장 입금 시 주문자명과 입금자명이 다를 경우 자동으로 입금 확인이 어렵</p>
                                       <p>습니다. 이럴 경우 수동으로 입금확인 진행 후 주문완료 처리 도와드리고 있으</p>
                                       <p>니 혹시나 입금 후 주문취소가 되더라도 걱정하지 않으셔도 됩니다!</p>
                                    </div>
                                    <div class="payment_guide1">
                                    	<c:choose>
                                    		<c:when test="${not empty mvo }">
                                    			<div class="payment_guide1_1">
		                                          <p class="payment_guide1_name" style="color: black;">${mvo.mname }</p>
		                                          <p>${mvo.mhp }</p>
		                                          <p>${mvo.memail }</p>
		                                       	</div>
                                    		</c:when>
                                    		<c:otherwise>
		                                       <div class="payment_guide1_1">
		                                          <p class="payment_guide1_name" style="color: black;">홍길동</p>
		                                          <p>01012345678</p>
		                                          <p>qwer1234@gmail.com</p>
		                                       </div>
                                    		</c:otherwise>
                                    	</c:choose>
                                       <div class="payment_guide1_2">
	                                       <c:choose>
	                                       		<c:when test="${not empty mvo }">
	                                       			<input class="payment_guide1_2_in1" type="text" value="${mvo.mname }" name="obuyer">
	                                      	 		<input class="payment_guide1_2_in2" type="text"	value="${mvo.mhp }" name="ob_hp">
	                                        		<input class="payment_guide1_2_in3" type="text" value="${mvo.memail }" name="ob_email">
	                                    		</c:when>
	                                    		<c:otherwise>
			                                   		<input class="payment_guide1_2_in1" type="text" placeholder="성함" name="obuyer">
			                                     	<input class="payment_guide1_2_in2" type="text" placeholder="핸드폰 번호" name="ob_hp">
			                                        <input class="payment_guide1_2_in3" type="text" placeholder="이메일 주소" name="ob_email">
			                                   	</c:otherwise>
	                                       </c:choose>
                                       </div>
                                       <div class="payment_btn">
                                          <button type="button" name="btn" value="수정" id="btnx">
                                             <strong>수정</strong>
                                          </button>

                                       </div>
                                    </div>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 1번째 2번째  table -->
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <table class="payment_content1_3">
                           <tr>
                              <td>
                                 <div>
                                    <h4>배송 정보</h4>
                                    <div class="deliver">
                                    	<c:choose>
                                       		<c:when test="${not empty mvo }">
                                       			<div>
		                                          <p style="font-weight: 500;">${mvo.mname }</p>
		                                          <p class="deliver_ph">${mvo.mhp }</p>
		                                          <p id="ob_addr1">${mvo.maddr1 }</p>
		                                          <p id="ob_addr2">${mvo.maddr2 }</p>
		                                          <p>(06129)</p>
                                       			</div>
                                    		</c:when>
                                    		<c:otherwise>
                                    			<div>
		                                          <p style="font-weight: 500;">홍길동</p>
		                                          <p class="deliver_ph">01012345678</p>
		                                          <p>서울 강남구 강남대로 428</p>
		                                          <p>만이빌딩 5층,10층</p>
		                                          <p>(06129)</p>
                                    			</div>
		                                   	</c:otherwise>
                                      	</c:choose>
                                       <div>
                                       </div>
                                       <div class="message">
                                          <button type="button" id="btnx1">
                                             <strong>변경</strong>
                                          </button>
                                       </div>
                                    </div>
                                    
                                    <div class="deliver2">
                                       <div class="deliver2_1">
                                          <p>
                                             <span class="deliver2_sp">배송지 선택</span><span class="deliver2_sp1" id="btnx1_2">신규입력</span>
                                          </p>                                    
                                       </div>
                                       <div class="deliver2_2">
                                             <div class="deliver2_2_1">                                                
                                                <input type="radio">&ensp;홍길동&ensp;<small>최근</small>
                                                <p style="color:#BDBDBD;">01012345678</p>
                                                <p>서울 강남구 강남대로 428</p>
                                               <p>만이빌딩 5층,10층</p>
                                               <p>(06129)</p> 
                                            </div>   
                                            <div>
                                               <button id="btnx2">수정</button>
                                            </div>                                           
                                       </div>
                                    </div>
 									<div class="deliver3">
                                       <div class="deliver3_1">
                                          <p>
                                             <span class="deliver3_1_sp1" id="btnx1_1">배송지 선택</span><span class="deliver3_1_sp2">신규입력</span>
                                          </p>                                    
                                       </div>
                                       <div>
                                             <div class="deliver3_2">                                                
                                                <input type="checkbox" id="same_b_r">&ensp;주문자 정보와 동일<br>
                                               <div class="deliver3_3"> 
                                                   <div class="deliver3_3_1">
                                                      <input type="text" placeholder="수령인" name="orecipient">
                                                   </div>
                                                   <div class="deliver3_3_2">
                                                      <input type="text" placeholder="연락처" name="or_hp">
                                                   </div>
                                                </div>    
                                                <input class="postcode" type="text" placeholder="우편번호" name="or_post">
                                                <button><strong>주소찾기</strong></button><br> 
                                                <input class="address" type="text" placeholder="주소" name="or_addr1"><br>
                                                <input class="address" type="text" placeholder="상세주소" name="or_addr2"><br>
                                                <input class="address1" type="checkbox">&ensp;배송지 목록에 추가  <br>                                                                                       
                                            </div>   
                                                                                 
                                       </div>
                                     
                                    </div>
                                    
                                    
                                    
                                    
                                    <div class="message1">
                                       <p>배송메모</p>
                                       <select name="oship_memo">
                                          <option value="0">배송메모를 선택해 주세요.</option>
                                          <option value="1">배송 전에 미리 연락 바랍니다.</option>
                                          <option value="2">부재시 경비실에 맡겨주세요.</option>
                                          <option value="3">부재시 전화나 문자를 남겨주세요.</option>
                                          <option id="option1">직접입력</option>
                                       </select>
                                       <p id="option1_2">
                                         <input type="text" placeholder="배송메모를 입력해 주세요">
                                       </p> 
                                      
                                    </div>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 1번째 3번째  table -->
                     </td>
                  </tr>
                  <tr>
                     <td>
                        <table class="payment_content1_4">
                           <tr>
                              <td>
                                 <div>
                                    <h4>쿠폰/만월포인트</h4>
                                    <div class="payment_content1_4_1">
                                       <div>
                                          <div class="coupon">
                                             <p>쿠폰</p>
                                             <input type="text" placeholder="보유쿠폰 0장">
                                             <button type="button" id="bu1" class="coupon_modal">쿠폰적용</button>
                                           
                              </div>
                                       </div>
                                       <div>
                                          <div class="coupon">
                                             <p>쿠폰번호</p>
                                             <input type="text" placeholder="쿠폰 번호 입력">
                                             <button type="button" onclick="codecheck()" id="bu1">코드확인</button>
                                          </div>
                                       </div>
                                       <div>
                                          <div class="coupon">
                                             <p>만월포인트</p>
                                             <input type="text" placeholder="0">
                                             <button type="button">전액사용</button>
                                          </div>
                                       </div>

                                       <div class="point">
                                          <small style="color: black;">보유 만월포인트 0</small>
                                          <p>
                                             <small>1 만월포인트 이상 보유 및 1원 이상 구매시</small>
                                          </p>
                                          <p>
                                             <small>사용 가능</small>
                                          </p>
                                       </div>
                                    </div>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 1번째 3번째  table -->
                     </td>
                  </tr>
               </table> <!-- 1번째 전체 table -->

               <table class="payment_content2">
                  <!-- 2번째 전체 table -->
                  <tr>
                     <td>
                        <table class="payment_content2_1">
                           <tr>
                              <td>
                                 <div>
                                    <h4>주문 요약</h4>
                                    <div>
                                       <div class="information">
                                          <p class="information1">
                                             상품가격
                                            <c:set var="total" value="${0}"/>
											<c:forEach var="vo" items="${list}">
												<c:choose>
													<c:when test="${vo.psaleprice != 0 }">
														<c:set var="total" value="${total + vo.psaleprice * vo.c_qnt}" />
													</c:when>
													<c:otherwise>
														<c:set var="total" value="${total + vo.pprice * vo.c_qnt}" />
													</c:otherwise>
												</c:choose>
											</c:forEach>
                                             <span>
												<c:out value="${total}"/>
                                             </span>
                                          </p>
                                          <p class="information2">
                                             배송비<span>+3,000원</span>
                                          </p>
                                       </div>
                                       <div class="information3">
                                          <p>
                                             총 주문금액
                                             <span id="in_total">
												<c:out value="${total + 3000}"/>
                                             </span>
												원<br>
                                             <input type="hidden" name="ototal">
                                          </p>
                                       </div>
                                    </div>
                                    <div class="information_point">
                                       <p>
                                          <span>0</span>만월포인트
                                          적립예정
                                       </p>
                                    </div>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 2번째 1번째  table -->
                     </td>
                  </tr>
                  <tr>
                     <td>
                         <table class="payment_content2_2">
                           <tr>
                              <td>
                                 <div>
                                    <div>
                                       <h4>결제 수단</h4>
                                    </div>
                                    <div class="payment_method" style="margin-bottom: -30px;">
                                       <p>
                                          <span>
                                             <input type="radio" name="opayment" value="신용카드">&ensp;신용카드
                                          </span>
                                          <span class="payment_method1">
                                             <input type="radio" name="opayment" value="실시간계좌이체">&ensp;실시간계좌이체
                                          </span>
                                       </p>
                                       <p>
                                          <span>
                                             <input type="radio" name="opayment" value="가상계좌">&ensp;가상계좌
                                          </span>
                                          <span class="payment_method1">
                                             <input type="radio" name="opayment" value="무통장입금">&ensp;무통장입금
                                          </span>
                                       </p>
                                       <input style="margin-bottom: 40px;" type="radio" name="opayment" value="카카오페이">&ensp;카카오페이
                                       <div id="selectPay_noBank">
                                 <div class="account_number">                                      
                                             <select>
                                                <option >신한은행 100035029403 주식만월회</option>
                                             </select>
                                          </div>  
                                          <p class="pay_name">  
                                             <input style="padding-left: 5px;" type="text" placeholder="입금자명 (미입력시 주문자명)">
                                          </p>
                                          <p class="pay_noBank_t">   
                                             <small>주문 후 12시간 동안 미입금시 자동 취소됩니다.</small>
                                          </p>   
                                          <div style="background-color: #F6F6F6; margin: 0 -28.5px;">
                                             <p id="selectPay_noBank_1">
                                                      <input type="checkbox" name="cash" value="현금영수증 신청">&nbsp;현금영수증 신청
                                                   </p>   
                                                   <div class="selectPay_noBank_1">
                                                       <div id="selectPay_noBank1" style=" display: flex;">
                                                        <p class="selectPay_noBank_1_p">
                                                         	<input type="radio" name="cash1" value="소득공제용">&ensp;소득공제용
                                                      	</p>
                                                      	<p>    
                                                         	<input type="radio" name="cash1" value="지출증빙용">&ensp;지출증빙용
                                                      	</p>
                                                   	  </div>
                                                   <div class="deduction">
                                                      <p id="selectPay_noBank2">
                                                         <input  type="text" placeholder="휴대전화번호 입력" value="휴대전화번호 입력" >
                                                      </p>
                                                      <p id="selectPay_noBank3">
                                                         <input type="text" name="cash2" placeholder="사업자번호 입력" value="사업자번호">
                                                      </p>
                                                   </div>
                                                </div>   
                                            </div>
                                       </div>
                                    </div>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 2번째 2번째  table -->

                     </td>
                  </tr>
                  <tr>
                     <td>
                        <table class="payment_content2_3">
                           <tr>
                              <td>
                                 <div class="agreement">
                                    <input type="checkbox" name="agree" value="selectall" onclick="selectAll(this)">&nbsp;전체 동의
                                    <p>
                                       <span>┗</span>&emsp;
                                       <input type="checkbox" name="agree" value="selectall" onclick="selectAll(this)">&nbsp;구매조건 확인 및 결제진행에 동의
                                    </p>
                                 </div>
                              </td>
                           </tr>
                           <tr>
                              <td>
                                 <div  class="agreement_btn">
                                    <button class="agreement_btn1" type="button">결제하기</button>
                                 </div>
                              </td>
                           </tr>
                        </table> <!-- 2번째 3번째  table -->
                     </td>
                  </tr>
               </table><!-- 2번째 전체 table -->
            </td>
         </tr>
      </table>
      </form>
      
      <!-- 모달창 -->
   <div class="modal">
      <div class="modal_inner">
         <div class="desc">
            <div class="desc_header">
               <p>쿠폰적용</p>
            </div>   
               <div class="desc_content">
                  <p>사용 가능한 쿠폰이 없습니다</p>
                  <a href="#">쿠폰 받으러 가기</a>
               </div>
               <button class="close_modal" id="close_modal">&times;</button>
               <button class="close_modal" id="close_modal1">닫기</button>
         </div>
     </div> 
  </div>      
         
      
      
      
   </div>


   <!--  footer -->
   <jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>