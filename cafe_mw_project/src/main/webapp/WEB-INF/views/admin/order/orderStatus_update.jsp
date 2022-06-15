<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>(관리자 접속 중)카페 만월회 벤치마킹 프로젝트</title>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/admin.css">
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght@100" rel="stylesheet" />
</head>
<body>

<div id="order_popup" style="display:none;">

	<div class="order_popup_box">
     	<span class="material-symbols-outlined" id="closeX2">close</span>
	    <div class="popup_cont" id="popup_cont_order">
	    
			<div>
				<p>주문 상태 업데이트</p>
				<table border='1'>
					<tr>
						<td><p class="orderStatus_change">입금 대기 중</p></td>
						<td><p class="orderStatus_change">배송 준비</p></td>
					</tr>
					<tr>
						<td><p class="orderStatus_change">배송 중</p></td>
						<td><p class="orderStatus_change">배송 완료</p></td>
					</tr>
				</table>
			</div>
			<div>
				<p>운송장번호 입력</p>
				<div>
					<input type="text" id="invoice" disabled="disabled" maxlength="5">
					<button type="button" id="addInvoice">변경</button>
				</div>
			</div>
			
	    </div>
	</div>
	
</div>

</body>
</html>