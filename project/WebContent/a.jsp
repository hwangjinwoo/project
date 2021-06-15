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
	${id }
	<table>
		<tr>
			<div id="container">
				<h2 id="heading">레오투톤 니트조끼</h2>
				<div id="prod-pic">
					<img src="images/333.webp" alt="레오투톤 니트조끼" id="clothes" width="300" height="450">
					<div id="desc">
						<form action="order.do" method="post">
							<ul>
								<li>레오투톤 니트조끼</li>
								<li class="bluetext">PRICE 43,000</li>
								<li>상품 간략 설명<br>-투톤 컬러 배색 디테일의 프루티한 루즈핏 니트 베스트<br>
								-밑단 시보리와 넓은 암홀로 오버핏 티셔츠 위에 착용하기에도 좋습니다.<br>
								-고급 아크릴과 코튼 혼용 소재로 부드러운 터치감을 제공합니다.<br>
								-색상은 총 2가지로 오렌지, 키위가 있습니다.</li>
								<input type="hidden" name="pname" value="레오투톤 니트조끼">
								<input type="hidden" name="id" value="${id }"> 
								<input type="hidden" name="amount" value="1">   
								<button type="submit">주문하기</button>
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
			<img src="images/A/A1.jpg" width="800" height="3000">
			<img src="images/A/A2.jpg" width="800" height="8000">
			<img src="images/A/A3.jpg" width="800" height="8000">
			<img src="images/A/A4.jpg" width="800" height="8000">
		</div>
	</p>
	
	
</body>

		<footer>
			<%@include file="footer.jsp" %>
		</footer>
</html>