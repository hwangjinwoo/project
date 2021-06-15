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
				<h2 id="heading">비치 썸머 플립플랍</h2>
				<div id="prod-pic">
					<img src="images/10.webp" alt="비치 썸머 플립플랍" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>비치 썸머 플립플랍</li>
								<li class="bluetext">PRICE 89,000</li>
								<li>color</li>
								<input type="radio" name="color" value="box" >블랙</label>
								<input type="radio" name="color" value="box" >버터</label><br>
								<input type="radio" name="color" value="box" >카밍 브라운</label>
								<input type="radio" name="color" value="box" >화이트</label>
								<li>size</li>
								<input type="radio" name="size" value="box" >250</label>
								<input type="radio" name="size" value="box" >260</label>
								<input type="radio" name="size" value="box" >270</label><br>
								<input type="radio" name="size" value="box" >280</label>
								<input type="radio" name="size" value="box" >290</label><br>
								<input type="hidden" name="pname" value="비치 썸머 플립플랍">
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
			<img src="images/H/H1.jpg" width="800" height="8000">
			<img src="images/H/H2.jpg" width="800" height="8000">
			<img src="images/H/H3.jpg" width="800" height="8000">
			<img src="images/H/H4.jpg" width="800" height="8000">
			<img src="images/H/H5.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>