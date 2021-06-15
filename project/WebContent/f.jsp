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
				<h2 id="heading">Snug basic sweatshirt</h2>
				<div id="prod-pic">
					<img src="images/8.webp" alt="Snug basic sweatshirt" id="Snug basic sweatshirt" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>Snug basic sweatshirt</li>
								<li class="bluetext">PRICE 29,000</li>
								<li>상품 간략 설명<br>-눈길을 끄는 매력적인 7가지 컬러의 루즈한 핏감을 잘 살려주는 유루이 자체제작 데일리룩 베이직 맨투맨<br>
								-과하지 않으면서 옷 자체에서 풍기는 무드와 딱 맞는 신축성으로 편안하면서도 안정감 있는 착용감을 제공합니다.<br>
								-시보리가 손목을 부드럽고 코지하게 살포시 감싸줍니다.스웻셔츠 하나로 코디에 포인트 주기 좋은 아이템입니다.<br>
								-색상은 총 7가지로 화이트 멜란지, 아이보리, 소프트 핑크, 그린, 오션 블루, 차콜, 네이비가 있습니다.<br></li>
								<input type="hidden" name="pname" value="Sung basic sweatshirt">
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
			<img src="images/F/F1.jpg" width="800" height="8000">
			<img src="images/F/F2.jpg" width="800" height="8000">
			<img src="images/F/F3.jpg" width="800" height="8000">
			<img src="images/F/F4.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>