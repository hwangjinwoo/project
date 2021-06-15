<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/login.css">
<meta charset="UTF-8">
<title>LOGIN</title>
</head>
<body>
<form action="login.do" method="post">
		
<FL2>
	<ul>
		<li>
			<a href="login.jsp">LOGIN</a></li>
		<li>
			<a href="join.jsp">JOIN</a></li>
	</ul>
</FL2>
		
<p><center>
	<div id="a">
		<a href="title.jsp"><img src="images/header.PNG"></a>
	</div>
</p></center>
		
		
	<fieldset class="size">
		<legend>LOGIN</legend>
		<ul>
			<li>
				<label class="x" for="id">아이디(6자 이상)</label>
				<input type="text" name="id" autofocus required placeholder="(6자 이상)">
			</li>
			<li>
				<label for="user_password">비밀번호(10자이상)</label>
				<input type="password" name="pwd" autofocus required placeholder="(10자이상)">
			</li>
			
		</ul>
		
		<input type="submit" value="확인" >
		<button id="button" onclick="location.href='join.jsp'">회원 가입</button>
		<br>
		<label><input type="checkbox" value="box">로그인 상태 유지</label>
		
	</fieldset>


<footer>
	<address>
		<p>(주)Our Blue   |  황진우</p>
		<p> 010-7584-4889</p>
		<p>201833032@yiu.ac.kr</p>
	</address>
</footer>
</form>
</body>
</html>