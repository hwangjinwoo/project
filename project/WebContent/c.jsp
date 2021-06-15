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
				<h2 id="heading">이뉴어 라운드 반팔티</h2>
				<div id="prod-pic">
					<img src="images/5.webp" alt="이뉴어 라운드 반팔티" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>이뉴어 라운드 반팔티</li>
								<li class="bluetext">PRICE 25,000</li>
								<li>상품 간략 설명<br>-부담없이 단품 또는 레이어드로 활용하기 좋은 기본 라운드 반팔 티셔츠<br>
								-라이트한 색상들로 구성되어 있어 따스한 느낌의 코디에 유용하게 활용할 수 있습니다.<br>
								-색상은 총 5가지로 화이트, 크림, 스카이, 차콜, 블랙이 있습니다.<br></li>
								<input type="hidden" name="pname" value="이뉴어 라운드 반팔티">
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
			<img src="images/C/C1.jpg" width="800" height="3000">
			<img src="images/C/C2.jpg" width="800" height="8000">
			<img src="images/C/C3.jpg" width="800" height="8000">
			<img src="images/C/C4.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>