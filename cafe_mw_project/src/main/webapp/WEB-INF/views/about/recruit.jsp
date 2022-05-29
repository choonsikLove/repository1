<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="http://localhost:9000/manwol/resources/js/jquery-3.6.0.js"></script>
<script src="http://localhost:9000/manwol/resources/js/review.js"></script>
<link rel="stylesheet" href="http://localhost:9000/manwol/resources/css/about.css">
<style>
.material-symbols-outlined {
  font-variation-settings:
  'FILL' 1,
  'wght' 200,
  'GRAD' 200,
  'opsz' 48
}

.material-symbols-outlined {
  font-variation-settings:
  'FILL' 1,
  'wght' 700,
  'GRAD' 200,
  'opsz' 48
}
</style>
</head>
<body>
   <!-- header -->
   <jsp:include page="../header.jsp"></jsp:include>

   <!-- content -->

	<table style="width: 100%;">
		<tr>
			<td>
				<table style="text-align: center; width: 100%">
					<tr>
						<td style="padding-bottom: 10px;">
							<div style="font-style: oblique; margin: 30px 0 50px 0; font-size: 17px;">
								<p style="margin-bottom: 7px;">인생의 비극은</p>
								<p style="margin-bottom: 7px;">우리가 천재적인 재능을</p>
								<p style="margin-bottom: 7px;">타고나지 못한 데 있는 것이 아니라</p>
								<p style="margin-bottom: 7px;">가지고 있는 강점을</p>
								<p style="margin-bottom: 7px;">충분히 활용하지 못한 데 있다.</p>
								<p style="margin-bottom: 7px; color: #0042A9;font-size: 16px;"><strong>-피터드러커-</strong></p>
							</div>
							<img src="http://localhost:9000/manwol/resources/images/about/about1.png" width="330px;" style="margin-bottom: 30px;">
							<div style="color: #0042A9; font-size: 15px;">
								<p style="margin-bottom: 7px;"><strong>보름달 뜨는날 천재들의 모임 만월회는</strong></p>
								<p><strong>당신의 강점을 발견하여 천재로 만들어주는 곳입니다.</strong></p>
							</div>
						</td>
					</tr>
					
					<tr>
						<td style="display: flex; justify-content: center; padding-top: 50px; font-size: 16px;">
							<div style="padding: 70px 0 100px 0; width: 1100px; border-bottom: 1px solid #D8D8D8; border-top: 1px solid #D8D8D8;">
								<div style="margin-bottom: 40px;">
									<p style="margin-bottom: 7px;">만월회의 조직은 크게 두가지,</p>
									<p style="margin-bottom: 7px;">빅문과 리틀문으로 나뉩니다.</p>
									<p style="color: #0042A9;"><strong>만월회를 리드하는 그룹은 [빅문]입니다.</strong></p>
								</div>
								<div>	
									<p style="margin-bottom: 7px;">빅문에 소속되기 위한 문턱은 높고 엄격합니다.</p>
									<p style="margin-bottom: 7px;">하지만 그에 맞는 권한과 책임이 주어지고</p>
									<p style="margin-bottom: 7px;">본인 능력에 따른 최고의 대우를 해드립니다.</p>
								</div>
								<div>	
									<p style="margin: 40px 0; color: #0042A9;"><strong>빅문 구성원은 대부분 리틀문에서 발굴합니다.</strong></p>
								</div>
								<div>	
									<p style="margin-bottom: 7px;">리틀문은 누구에게나 열려있습니다.</p>
									<p style="margin-bottom: 7px;">빅문이건 리틀문이건 모두 만월회의 구성원으로</p>
									<p style="margin-bottom: 7px;">각자의 맡은 역할을 다합니다.</p>
								</div>
							</div>
						</td>
					</tr>


					<tr>
						<td>
							<div style="display: flex; justify-content: center; margin: 50px 0;">
								<a href="http://localhost:9000/manwol/bigmoon"><img src="http://localhost:9000/manwol/resources/images/about/Recruit1.png" width="580px;" style="margin:0 30px 30px 20px;"></a>
								<a href="http://localhost:9000/manwol/littlemoon"><img src="http://localhost:9000/manwol/resources/images/about/Recruit2.png" width="600px;" style="margin-bottom: 30px;"></a>
							</div>	
							<div>
								<h2 style="color: #0042A9; font-size: 21px;">채용 인원 : 상시</h2>
							</div>
							<div style="margin: 30px 25px 100px 25px;">
								<a href="http://localhost:9000/manwol/resources/images/about/만월회_이력서양식.docx"><button style="width: 100%; color: white; background-color: #0A2155; border: none; padding: 18px 0; font-size: 21px;">지원서류 다운로드</button></a>
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