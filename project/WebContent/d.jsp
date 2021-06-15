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
				<h2 id="heading">오퓰런스 린넨 니트</h2>
				<div id="prod-pic">
					<img src="images/6.webp" alt="오퓰런스 린넨 니트" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>오퓰런스 린넨 니트</li>
								<li class="bluetext">PRICE 38,000</li>
								<li>상품 간략 설명<br>-컬러 배색이 매력적이고 눈길을 사로잡는 린넨 소재 니트<br>
								-흔하지 않은 스트라이프 패턴으로 포인트 주기 좋은 아이템입니다.<br>
								-린넨 원사 혼방으로 통기성이 좋고 편안한 착용감을 제공합니다.<br>
								-색상은 총 3가지로 브라운, 네이비, 블랙이 있습니다.<br></li>
								<input type="hidden" name="pname" value="오퓰런스 린넨 니트">
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
			<img src="images/D/D1.jpg" width="800" height="3000">
			<img src="images/D/D2.jpg" width="800" height="8000">
			<img src="images/D/D3.jpg" width="800" height="8000">
			<img src="images/D/D4.jpg" width="800" height="8000">
			<img src="images/D/D5.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>