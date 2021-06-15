<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dev.vo.OrderVO" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<p><center>
	<div id="a">
		<a href="title.jsp"><img src="images/header.PNG"></a>
	</div>
</p></center>

	<% ArrayList<OrderVO> list = (ArrayList<OrderVO>) request.getAttribute("list");
	if(!list.isEmpty()) { %>
		<table border="1">
			<tr><th>상품번호</th><th>상품명</th><th>이름</th><th>수량</th><th>주문 날짜</th></tr>
			
			<% for(int i=0; i<list.size(); i++) {
				OrderVO order = list.get(i); %>
				<tr><td><%=order.getOnum() %></td>
					<td><%=order.getPname() %></td>
					<td><%=order.getId() %></td>
					<td><%=order.getAmount() %></td>
					<td><%=order.getOdate() %></td>
				</tr>
				
				<% }
			} else { 
				out.print("<h3>등록된 회원정보가 없습니다.</h3>");
			}
		%>
		</table>

</body>
</html>