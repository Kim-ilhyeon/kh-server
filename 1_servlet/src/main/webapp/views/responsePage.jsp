<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답용 페이지</title>
</head>
<body>
    <!-- HTMl 주석 -->
    <%-- JSP 주석 --%>

    <h1>##응답 완료##</h1>
    
    <%
    	// System.out.println("Hi~ JSP!?");
    	// * 스크립틀립(scriptlet) : HTML 문서 내에서 Java코드를 작성할 수 있는 영역
    	
    	// * 서블릿을 통해 전달된 데이터를 추출
    	String name = (String)request.getAttribute("userName");
    	String gender = (String)request.getAttribute("gender");
    	String age = (String)request.getAttribute("age");
    	String address = (String)request.getAttribute("address");
    	String height = (String)request.getAttribute("height");
    	String[] foods = (String[])request.getAttribute("foods");
    %>
    
    <%-- 변수의 값을 화면상에 출력하고자 할 때, <%뒤에 =를 붙여서 표현(작성) --%>
    이름 : <span><%= name %></span>
    <br>
    성별 : <% if (gender == null) { %>
    		선택하지 않음
    	  <% } else { %>
    		<span><%= gender %></span>
    	  <% } %>
    <br>
    나이 : <% if (age.equals("")) { %>
    		알수 없음
    	  <% } else { %>
   			 <span><%= age %></span>    	  	
    	  <% } %>
    <br>
    주소 : <span><%= address %></span>
    <br>
    키 : <span><%= height %></span>
    <br>
    음식 : <% if (foods == null) { %>
    		선택된 음식이 없습니다.
    	  <% } else { %>
    	  	<ol>
    	  	<% for (String f : foods) { %>
    	  		<li><%= f %></li>
    	  	<% } %>
    	  	</ol>
    <!-- 좋아하는 음식 : <span><%= String.join(" / ", foods) %></span>
    <br>
    원하는 출력방식에 따라서 위나 해당 문으로 선택하여 작성!!-->
    	  <% } %>

</body>
</html>