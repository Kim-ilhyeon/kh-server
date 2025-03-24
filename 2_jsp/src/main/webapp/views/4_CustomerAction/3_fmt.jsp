<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - Formating Library</title>
</head>
<body>
	<h1>* formatNumber</h1>
	<p>
		숫자 데이터의 형식(포맷) 지정 <br>
		- 표현하고자하는 숫자데이터의 형식을 통화기호, % 등으로 원하는 방식에 맞게 지정하는 태그
		<br>
		
		fmt:formatNumber value="출력할 값" [ groupingUsed="true/false" ] [ type="percent/currency" ] [ currencySymbol="문자" ]
	</p>
	
	<c:set var="n1" value="123456789"/>
	<c:set var="n2" value="0.65"/>
	<c:set var="n3" value="50000"/>
	
	* n1 : ${ n1 } <br>
	* n2 : ${ n2 } <br>
	* n3 : ${ n3 } <br>
	
	* 세자리마다 구분되어 출력 : <fmt:formatNumber value="${ n1 }"/> <br>
	* groupingUsed의 기본값 (세자리마다 출력) : <fmt:formatNumber value="${ n1 }" groupingUsed="true"/> <br>
	* 원래 데이터만 출력 : <fmt:formatNumber value="${ n1 }" groupingUsed="false"/> <br>
	
	* type=생략 : <fmt:formatNumber value="${ n2 }"/> <br>
	* type="percent" : <fmt:formatNumber value="${ n2 }" type="percent"/> <br>
	
	* type="currency" : <fmt:formatNumber value="${ n3 }" type="currency"/> <br>
	* currency="$" : <fmt:formatNumber value="${ n3 }" type="currency" currencySymbol="$"/> <br>
	* currency="원" : <fmt:formatNumber value="${ n3 }" type="currency" currencySymbol="원"/> <br>
	
	<br><br>
	
	<h1>* formatDate</h1>
	
	<p>날짜 및 시간 데이터의 포맷(형식) 지정하여 출력</p>
	
	<i>단, java.util.Date 객체를 사용하는 액션 태그이다.</i>
	<br>
	
	<c:set var="now" value="<%= new java.util.Date() %>" />
	- now : ${ now }
	<br>
	
	<ul>
		<li>
			날짜 : <fmt:formatDate value="${ now }" type="date"/>
		</li>
		<li>
			시간 : <fmt:formatDate value="${ now }" type="time"/>
		</li>
		<li>
			날짜 + 시간 : <fmt:formatDate value="${ now }" type="both"/>
			<ul>
				<li>
					medium : <fmt:formatDate value="${ now }" type="both" dateStyle="medium" timeStyle="medium"/>
				</li>
				<li>
					long : <fmt:formatDate value="${ now }" type="both" dateStyle="long" timeStyle="long"/>
				</li>
				<li>
					short : <fmt:formatDate value="${ now }" type="both" dateStyle="short" timeStyle="short"/>
				</li>
				<li>
					full : <fmt:formatDate value="${ now }" type="both" dateStyle="full" timeStyle="full"/>
				</li>
				<li>
					pattern : <fmt:formatDate value="${ now }" type="both" pattern="yyyy-MM-dd(E) HH:mm:ss"/>
				</li>
			</ul>
		</li>
	</ul>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>