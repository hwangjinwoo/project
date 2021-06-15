<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>

<%
	String id="";
	id=(String)session.getAttribute("id");
	if(id == null || id.equals("")) {
%>
		<FL1>
			<ul>
				<li>
					<a href="login.jsp">LOGIN</a></li>
				<li>
					<a href="join.jsp">JOIN</a></li>
				<li><a href="#">ORDER</a></li>
				<li><a href="#">CART</a></li>
			</ul>
		</FL1>
		
		<p>
			<div id="a">
				<a href="title.jsp"><img src="images/header.PNG"></a>
			</div>
		</p>
		
		
<%
	} else {
%>
		<FL1>
			<ul>
				<li>
					<a href="logOut.do">LOGOUT</a></li>
				<li><a href="orderList.do">ORDER</a></li>
				<li><a href="#">CART</a></li>
			</ul>
		</FL1>
		
		
		<p>
			<div id="a">
				<a href="title.jsp"><img src="images/header.PNG"></a>
			</div>
		</p>
<% } %>


</body>
</html>