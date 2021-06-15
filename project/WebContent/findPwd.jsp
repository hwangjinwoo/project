<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="findPwd.do" method="post">
      <h2>비밀번호 찾기</h2>
      <h6>비밀번호는 가입시 입력하신 아이디, 이름, 이메일을 통해 찾을 수 있습니다.</h6>
      ID : <input type="text" name="id" required/><br>
      NAME : <input type="text" name="name" required/><br>
      EMAIL : <input type="email" name="email" /><br>
      <button type="submit">찾기</button>
   </form>

</body>
</html>