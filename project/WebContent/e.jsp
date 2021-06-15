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
				<h2 id="heading">Basic long sleeved t-shirt</h2>
				<div id="prod-pic">
					<img src="images/7.webp" alt="Basic long sleeved t-shirt" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>Basic long sleeved t-shirt</li>
								<li class="bluetext">PRICE 38,000</li>
								<li>상품 간략 설명<br>-단품 또는 레이어드로 활용하기 좋은 없어서는 안되는 레이어드 베이직 긴팔 티셔츠<br>
								-심플한 디자인의 이 레이어드 베이직 티셔츠가 가진 다양한 표현력과 활용성으로 코디의 밀도가 높아질 수 있습니다.<br>
								-밑단 절개 포인트로 레이어드시, 더 멋스럽게 연출할 수 있습니다.<br>
								-색상은 총 4가지로 화이트, 차콜, 네이비, 블랙이 있습니다.<br></li>
								<input type="hidden" name="pname" value="Basic long sleeved t-shirt">
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
			<img src="images/E/E1.jpg" width="800" height="8000">
			<img src="images/E/E2.jpg" width="800" height="8000">
			<img src="images/E/E3.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>