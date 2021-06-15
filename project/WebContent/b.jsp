<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
    
    
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link type="text/css" rel="stylesheet" href="css/style.css">
<title>Our Blue</title>
</head>
<body>
	<header>
		<%@include file="header.jsp" %>
	</header>
	
	<%@include file="menu.jsp" %>
	
	<table>
		<tr>
			<div id="container">
				<h2 id="heading">디지털 믹스 반팔티</h2>
				<div id="prod-pic">
					<img src="images/4.webp" alt="디지털 믹스 반팔티" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>디지털 믹스 반팔티</li>
								<li class="bluetext">PRICE 24,000</li>
								<li>상품 간략 설명<br>-디지털 느낌의 랜덤한 패턴으로 독특한 무드를 보이는 컬러 믹스 니트 반팔 티셔츠
								<br>-디지털적인 요소를 포인트로 심플하지만 강한 이미지를 가지고 있습니다.
								<br>-적당한 두께감으로 봄부터 가을까지 걱정없이 착용할 수 있습니다.
								<br>-색상은 총 3가지로 그레이, 블루, 블랙이 있습니다.</li>
								<input type="hidden" name="pname" value="디지털 믹스 반팔티">
								<input type="hidden" name="id" value="${id }"> 
								<input type="hidden" name="amount" value="1"> 
								<button>주문하기</button>
								<button>장바구니 담기</button>
								<li>▼착용샷▼</li>
							</ul>
						</form>
					</div>
				</div>
			</div>
		</tr>
	</table>
	
	<p>
		<div id="b">
			<img src="images/B/B1.jpg" width="800" height="3000">
			<img src="images/B/B2.jpg" width="800" height="8000">
			<img src="images/B/B3.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>