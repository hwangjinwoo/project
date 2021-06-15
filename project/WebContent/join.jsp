<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet" href="css/join.css">
<meta charset="UTF-8">
<title>JOIN</title>
</head>
<body>
<p><center>
	<div id="a">
		<a href="title.jsp"><img src="images/header.PNG"></a>
	</div>
</p></center>

    <div id="container">
      <h1>JOIN</h1>
      <form id="join" method="post" action="join.do">
        <fieldset>
          <legend>회원정보</legend>    
          <ul type="none">
            <li>
              	<label for="id">아이디</label>
              	<input type="text" name="id" autofocus placeholder="(공백없이 10자 내외.)" required> 
            </li>
            <li>
              	<label for="pwd1">비밀번호</label>
              	<input type="password" name="pwd" placeholder="(특수기호 포함.)" required> 
            </li>        
            <li>
              	<label for="pwd2">비밀번호 확인</label>
              	<input type="password" name="pwd2" required> 
            </li>
            <li>
				<label for="name">이름</label>
				<input type="text" name="name" autofocus placeholder="이름을 입력하시오." required>
			</li>
			<li>
              <label for="mail">이메일</label>
             	<input type="email" name="email" required> 
            </li>
            <li>
				<label for="number">휴대전화</label>
				<input type="tel" name="phone" autofocus placeholder="(-없이 입력)" required>
			</li>
		
    	</ul>      
 	 </fieldset>
 	 
          <input type="submit" value="가입하기">
          <button id="button" onclick="location.href='title.jsp'">취소</button>
     
 	</form>
 </div> 
      
  
    	<footer>
    	<address>
      		<p>(주)Our Blue   |  황진우</p>
      		<p> 010-7584-4889</p>
      		<p>201833032@yiu.ac.kr</p>
   		 </address>
  		</footer>      
  </body>
</html>