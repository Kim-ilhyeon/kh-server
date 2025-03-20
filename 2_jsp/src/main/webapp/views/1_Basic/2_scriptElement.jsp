<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 스크립트 원소</title>
</head>
<body>
	<h1>스크립트 원소(문법)</h1>
	
	<%
		/*
			스클립틀릿 : 해당 영역 내에서는 자바 코드 작성 가능!
		*/
		int sum = 0; 	// 변수 언언
		for(int i = 0; i <= 100; i++) {
			sum += i;
		}
	%>
	
	<p>
		화면에 출력 <br>
		- 표현식을 사용하여 출력 : <%= sum %> <br>
		- 스크립틀릿을 사용하여 출력 : <% out.println(sum); %>
		<!-- out : JSP의 내장 객체 (PrintWriter 타입) -->
	</p>
	
	<%
		String[] sArr = {"딸기", "바나나", "사과", "포도"};
	%>
	<h5>배열길이 : <%= sArr.length %></h5>
	<h5>배열에 담긴 값: <%= String.join("/", sArr) %></h5>
</body>
</html>