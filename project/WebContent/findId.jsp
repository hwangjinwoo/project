<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="findId.do" method="post">
      <h2>아이디 찾기</h2>
      <h6>아이디는 가입시 입력하신 이름과 이메일을 통해 찾을 수 있습니다.</h6>
      NAME : <input type="text" name="name" required/><br>
      EMAIL : <input type="email" name="email" /><br>
      <button type="submit">찾기</button>
 	</form>
</body>
</html>