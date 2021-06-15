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
				<h2 id="heading">Paris 스퀘어 더비 슈즈</h2>
				<div id="prod-pic">
					<img src="images/9.webp" alt="Paris 스퀘어 더비 슈즈" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>Paris 스퀘어 더비 슈즈</li>
								<li class="bluetext">PRICE 135,000</li>
								<li>상품 간략 설명<br>-다양한 스타일에 코디할 수 있는 PARIS 스퀘어 더비 슈즈<br>
								-리얼 소가죽을 사용해 은은한 광택으로 퀄리티를 높였습니다<br>
								-편안한 착화감을 위해 신경썼으며, 탄탄한 마무리로 완성했습니다.<br>
								-앞코는 살짝 각이 잡힌 스퀘어 형태로 트렌디한 스타일을 연출했습니다.<br></li>
								<input type="hidden" name="pname" value="Paris 스퀘어 더비 슈즈">
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
			<img src="images/G/G1.jpg" width="800" height="8000">
			<img src="images/G/G2.jpg" width="800" height="8000">
			<img src="images/G/G3.jpg" width="800" height="8000">
			<img src="images/G/G4.jpg" width="800" height="8000">
		</div>
	</p>
</body>
<footer>
	<%@include file="footer.jsp" %>
</footer>
</html>