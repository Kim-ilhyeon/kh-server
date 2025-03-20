<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습 (1) - 랜덤 숫자 뽑기 - 결과페이지</title>
</head>
<body>
	<%-- 1 ~ 45까지 랜덤 숫자 6개를 뽑아 출력하기 --%>
	<% 
		int random1 = (int)(Math.random()*45+1);
		int random2 = (int)(Math.random()*45+1);
		int random3 = (int)(Math.random()*45+1);
		int random4 = (int)(Math.random()*45+1);
		int random5 = (int)(Math.random()*45+1);
		int random6 = (int)(Math.random()*45+1);
	%>
	1번 : <span><%=random1 %></span> <br>
	2번 : <span><%=random2 %></span> <br>
	3번 : <span><%=random3 %></span> <br>
	4번 : <span><%=random4 %></span> <br>
	5번 : <span><%=random5 %></span> <br>
	6번 : <span><%=random6 %></span> <br>
	<!-- ------------------------------------- -->
	<% 
		int[] arr = new int[6];
		for (int i = 0; i < arr.length; i++) {
			arr[i] = (int)(Math.random()*45+1);			
		}
	%>
	<% for(int i = 0; i < arr.length; i++) { %>
		<%= arr[i] %> <br>
	<% } %>
</body>
</html>