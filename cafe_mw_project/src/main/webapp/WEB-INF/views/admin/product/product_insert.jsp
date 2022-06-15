<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(관리자 접속 중)카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/product_write.css">
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/product_write.js"></script>
<script src="http://localhost:9000/manwol/resources/js/product_insert.js"></script>
<link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square.css" rel="stylesheet">
</head>
<body>

<header>
      <div>
         상품 추가
      </div>
      
      <div>
         <button type="submit">취소</button>
         <button id="product_insert_btn" type="button">작성</button>
      </div>
   </div>
</header>
<hr>

<div><%--헤더 아래 전체 --%>
   <form name="product_insert" action="product_insert" method="post" enctype="multipart/form-data" accept-charset="utf-8">
   <div><%--중앙 --%>
         <div>
            <img alt="프로필 사진"
               src="http://localhost:9000/manwol/resources/images/default_profile.png">
            <span>상품 이름</span>
            <input type="text" placeholder="상품 이름" name="pname">
         </div>
         <div>
            <span>가격</span> <input type="text" placeholder="가격" name="pprice">
            <span>할인가</span> <input type="text" placeholder="할인가"  name="psaleprice">
         </div>
         <div>
            <span>태그 이미지 선택</span>
            <table border='1'>
               <tr>
                  <td>
                     <img alt="새 상품" src="http://localhost:9000/manwol/resources/images/product/NEW.jpg">
                  </td>
                  <td>
                     <img alt="주문 폭주 상품" src="http://localhost:9000/manwol/resources/images/product/주문폭주.jpg">
                  </td>
                  <td>
                     <img alt="세일 상품" src="http://localhost:9000/manwol/resources/images/product/SALE.jpg">
                  </td>
                  <td>
                     <img alt="선물 추천 상품" src="http://localhost:9000/manwol/resources/images/product/선물추천.jpg">
                  </td>
               </tr>
               <tr>
                  <td>
                     <p>새 상품</p><br>
                     <input type="checkbox" name="tagImage" value="새상품">
                  </td>
                  <td>
                     <p>주문 폭주 상품</p><br>
                     <input type="checkbox" name="tagImage" value="주문폭주상품">
                  </td>
                  <td>
                     <p>세일 상품</p><br>
                     <input type="checkbox" name="tagImage" value="세일상품">
                  </td>
                  <td>
                     <p>선물 추천 상품</p><br>
                     <input type="checkbox" name="tagImage" value="선물추천상품">
                  </td>
               </tr>
            </table>
         </div>
         <div>
            <span>카테고리</span>
            <select name="pcategory">
               <option value="">카테고리를 선택해 주세요</option> <%--이거 선택하면 안됨 --%>
                <option value="base">만월 원액</option>
                <option value="goods">만월 굿즈</option>
                <option value="gift">선물하기</option>
            </select>
         </div>
         <div>
            <span>대표 이미지</span>
            <input type="file" id="mainProductImage" name="files" style="visibility: hidden;">
            <label for="mainProductImage"><div>+</div></label>
            <div>
               여기에 이미지 넣기 이미지 이미지
            </div>
         </div>
         <div>
            <span>기타 이미지</span>
            <input type="file" id="productImages" name="files" style="visibility: hidden;">
            <label for="productImages"><div>+</div></label>
            <div>
               기타 이미지들
            </div>
         </div>
         <div>
            <span>재고</span>
            <input type="text" placeholder="정수만 입력 가능하게 만들기" name="pstock">
         </div>
         <div>
         선택 박스 만들기 코너임 이 문구는 나중에 지웁시다 (최대 15개로 설정하는 스크립트 넣기)<br>
            <span>선택 박스 이름</span>
            <input type="text" id="selectBoxName">
         
            <span>필수항목 여부</span>
            <input type="checkbox" id="selectBoxCheck">
            <button type="button" id="select1">추가</button>
         </div>
         <div id="newSelect">
         <%--
            <div class="selectDiv">
               <p>셀렉트박스 이름</p>
               <span>필수선택</span>
               <button type='button' class='deleteSelect'>x</button>
               <select class='newSelectBox'></select>
               <p>항목 입력</p>
               <input type='text' class= 'selectBoxOption'></input>
               <button type='button' class='selectAddButton'>추가</button>
            </div>
            <div class="selectDiv">
               <p>셀렉트박스 이름</p>
               <span>필수선택</span>
               <button type='button' class='deleteSelect'>x</button>
               <select class='newSelectBox'></select>
               <p>항목 입력</p>
               <input type='text' class= 'selectBoxOption'></input>
               <button type='button' class='selectAddButton'>추가</button>
            </div>
         <div class="selectDiv">
               <p>셀렉트박스 이름</p>
               <span>필수선택</span>
               <button type='button' class='deleteSelect'>x</button>
               <select class='newSelectBox'></select>
               <p>항목 입력</p>
               <input type='text' class= 'selectBoxOption'></input>
               <button type='button' class='selectAddButton'>추가</button>
            </div>
          --%>
         </div>
   </div>
   </form>
</div>


</body>
</html>