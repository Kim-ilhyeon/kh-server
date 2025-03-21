<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList, model.vo.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL = core</title>
</head>
<body>
	<h1>JSTL Core Library</h1>
	
	<h3>* 변수</h3>
	<pre>
		- 변수 선언과 동시에 초기화 c:set var="변수명" value="데이터(값)" [ scope="저장객체(영역)" ]
		영역 : page < request < session < application
		=> scope 속성을 생략하면 가장 작은 범위의 값으로 기본값이 설정됨.
		
		  + 해당 변수의 저장된 값을 어떤 scope에 setAttribute를 통해서 담아줄 지 결정
		  + 변수 선언하고 초기화까지의 기능을 제공
		  => c:set으로 선언한 변수는 반드시 EL로 접근해야 함!!
	</pre>
	
	<!--  num1이라는 변수에 10이라는 값을 저장 -->
	<c:set var="num1" value="10"/>
	
	<%-- request 영역에 num2라는 변수에 20이라는 값을 저장 --%>
	<c:set var="num2" value="20" scope="request"/>
	
	<p>num1 : ${ num1 }</p>
	<p>num2 : ${ num2 }</p>
	
	<%-- num1과 num2의 합을 addNum이라는 변수에 저장 (session 영역에) --%>
	<c:set var="addNum" value="${ num1 + num2 }" scope="session"/>
	
	<p>addNum : ${ addNum }</p>
	
	<c:set var="temp">9999</c:set>
	<%-- value속성 대신, 시작태그와 종료태그 사이에 초기 값을 지정할 수 있음!! --%>
	<p>temp : ${ temp }</p>
	
	<pre>
		- 변수 삭제 : c:remove var="삭제할 변수명" [ scope="삭제하고자 하는(영역) ]
		
			+ 해당 scope 영역에 저장되어 있는 변수를 찾아 제거하는 태그
			  => .removeAttribute() 를 사용하여 제거하는 것과 동일하게 처리됨
			+ scope 속성을 생략했을 경우 ??
	</pre>
	
	<%-- addNum 변수를 삭제 --%>
	<p>addNum : ${ addNum }</p>
	<c:remove var="addNum" scope="session"/>
	
	<p>제거 후 addNum : ${ addNum }</p>
	
	
	<c:set var="temp" value="1111"/>
	<c:set var="temp" value="2222" scope="request"/>
	
	<p>page scope에 저장된 temp : ${ temp }</p>
	<p>request scope에 저장된 temp : ${ requestScope.temp }</p>
	
	<c:remove var="temp"/>
	
	<p>temp 제거 후 page scope에 저장된 temp : ${ temp }</p>
	<p>temp 제거 후 request scope에 저장된 temp : ${ requestScope.temp }</p>
	<%-- 삭제하고자 하는 영역 scope를 생략할 경우 모든 영역에서 해당 변수의 값이 제거된다. --%>
	
	<pre>
		- 변수(데이터) 출력: c:out value="출력하고자하는 값" [ default="변수가 저장된 값이 없을 경우에 기본값" ] [ escapeXml="true/false" ]
	</pre>
	
	<c:out value="테스트"/> <br>
	
	<%-- addNum 변수의 값을 출력 --%>
	<c:out value="${ addNum }"/> <br>
	<c:out value="${ addNum }" default="데이터 없음"/> <br>
	
	<%-- outData 라는 변수에 '<b>강조태그</b>' 값을 저장 --%>
	<c:set var="outData" value="<b>강조태그</b>"/> <br>
	
	<c:out value="${ outData }"/> <br>
	<c:out value="${ outData }" escapeXml="true"/> <br>
	<%-- escapeXml 속성의 기본값은 true. 태그를 해석하지 않음 --%>
	<c:out value="${ outData }" escapeXml="false"/> <br>
	<%-- escapeXml 속성을 false로 지정할 경우 태그를 해석하여 출력 --%>
	
	<hr>
	
	<h3>* 조건문 - if c:if test="조건식"</h3>
	<pre>
		- Java에서의 if문과 비슷한 역할을 하는 태그
		- 조건식은 test 속성에 EL구문을 사용하여 작성
	</pre>
	
	<%-- num1이 num2보다 큰가? --%>
	<%-- * JSTL로 선언된 변수는 접근불가!! (EL로만 접근 가능)
	<% if (num1 > num2) { %>
	<% } %>
	--%>
	
	<c:if test="${ num1 > num2 }">
		num1이 num2보다 큽니다.
	</c:if>
	<c:if test="${ num1 lt num2 }">
		num1이 num2보다 작습니다.
	</c:if>
	
	<br>
	
	<c:set var="hi" value="안녕"/>
	<c:out value="${ hi }"/> <br>
	
	<%--
		hi변수에 저장된 값이 "안녕"일 경우 'hi~hi~hi~' 출력 
						"안녕"이 아닐 경우 'bye..bye..'출력
	--%>
	<c:if test="${ hi eq '안녕' }">
		hi~hi~hi~
	</c:if>
	<c:if test="${ hi != '안녕' }">
		bye..bye..
	</c:if>
	
	<br>
	
	<h3>* 조건문 - choose c:choose, c:when, c:otherwise</h3>
	<pre>
		- Java의 if ~ else, if ~ esle if 문과 비슷하게 동작되는 태그
		- 구조
			+ c:choose 하위 요소로 c:when, c:otherwise 사용
			
			c:choose
				c:when /c:when
				c:otherwise /c:otherwise
			/c:choose
	</pre>
	
	<%-- 
		hi변수의 값이 '안녕'일 경우 hi~hi~hi~
				   '안녕'이 아닐경우 bye..bye.. 출력
	 --%>
	<c:choose>
		<c:when test="${ hi eq '안녕' }">hi~hi~hi~</c:when>
		<c:otherwise>bye..bye..</c:otherwise>
	</c:choose>
	
	<br>
	 
	 
	 
	 
	 <%-- 
	 	num1의 값이 20보다 크면 "20보다 큼"
	 			, 10보다 크거나 같으면 "10보다 크거나 같음"
	 			, 그렇지 않으면 "10보다 작음" 출력
	 --%>
	 <c:choose>
	 	<c:when test="${ num1 > 20 }">20보다 큼</c:when>
	 	<c:when test="${ num1 >= 10 }">10보다 크거나 같음</c:when>
	 	<c:otherwise>10보다 작음</c:otherwise>
	 </c:choose> 
	
	
	<hr>
	
	<h3>* 반복문 - c:forEach</h3>
	<pre>
		- for loop문
			c:forEach var="변수명" begin="초기값" end="끝값" [ step="증가값" ]
		
		- 향상된 for문
			c:forEach var="변수명" items="배열/컬렉션(순차적으로 접근하고자하는 객체)" [ varStatus="현재 접근된 요소의 상태값을 보관하는 변수명" ]
	</pre>
	<%-- 스크립틀릿을 사용하여 1 ~ 10까지 출력 (한줄로) --%>
	<% for (int i = 1; i <= 10; i++) { %>
		<p><%= i %>
	<% } %>
	
	<hr>
	
	<c:forEach var="i" begin="1" end="10">
		<p> ${ i }</p>
	</c:forEach>
	
	<hr>
	
	<%-- h1 ~ h6 태그를 출력, "나는 h'n' 태그야" --%>
	<c:forEach var="i" begin="1" end="6">
		<h${ i }>나는 h${ i } 태그야</h${ i }>
	</c:forEach>
	
	<c:set var="fruits">
		딸기, 오렌지, 수박, 메론, 망고
	</c:set>
	
	* fruits에 저장된 값 : ${ fruits }
		<ul>
	<c:forEach var="i" items="${ fruits }" >
			<li>
				${ i }
			</li>
	</c:forEach>
		</ul>
		
	<%-- 
		colors라는 변수에 4가지 색상을 콤마(,)로 구분하여 저장
		목록 태그로 해당 글자를 출력 (* 저장된 컬러로 글자 색을 변경)
	--%>
	<c:set var="colors">
		red, skyblue, yellowgreen, pink
	</c:set>
	
	${ colors }
	
	<ul>
	<c:forEach var="i" items="${ colors }">
		<li style="color:${ i };">
			${ i }
		</li>
	</c:forEach>
	</ul>
	
	<%
		ArrayList<Student> list = new ArrayList<>();
	
		list.add(new Student("박민준", 20, "남자"));
		list.add(new Student("임성준", 20, "남자"));
		list.add(new Student("임수진", 20, "여자"));
	%>
	
	<%-- request.setAttribute("list", list); --%>
	<c:set var="list" value="<%= list %>" scope="request"/>
	
	<table border="1px">
		<thead>
			<tr>
				<th>No</th>
				<th>이름</th>
				<th>나이</th>
				<th>성별</th>
			</tr>
		</thead>
		
		<tbody>
			<c:choose>
				<c:when test="${ empty list }">
					<%-- 리스트가 비어있을 경우, "조회된 결과가 없습니다." 출력 --%>
					<tr>
						<td colspan="4">조회된 결과가 없습니다.</td>
					</tr>
				</c:when>
	
				<c:otherwise>
					<%-- 리스트가 비어있지 않을 경우, 제목셀에 맞춰서 내용 출력 --%>
					<%--
					<c:forEach var="n" begin="0" end="${ list.size() }">
						<tr>
							<td>${ n + 1 }</td>
							<td>${ list(i).getName }</td>
							<td>${ list(i).getAge }</td>
							<td>${ list(i).getGender }</td>
						</tr>	
					</c:forEach>
					--%>	
					
					<c:forEach var="i" items="${ list }" varStatus="vs">
							<tr>
								<%-- <td>${ vs.index }</td> --%>
								<%-- index: 0부터 시작 --%>
								<td>${ vs.count }</td>
								<%-- count: 1부터 시작 --%>
								<td>${ i.name }</td>
								<td>${ i.age }</td>
								<td>${ i.gender }</td>
							</tr>		
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
	<br>
	
	<h3>* 반복문 - forTokens</h3>
	<pre>
		특정 구분자를 통해서 순차적으로 접근하고자 할 때 사용
		
		c:forTokens var="변수명" items="분리하고자 하는 대상" delims="구분자"
		
		- 구분자를 통해서 분리된 각각의 값에 순차적으로 접근하여 반복문 수행
		- 콤마(,)가 아닌 다른 구분자를 사용하고자 할 때에 사용한다.
		- Java에서 문자열.split("구분자") 또는 StringTokenizer 과 비슷한 기능
	</pre>
	
	<%-- movies 라는 변수에 영화를 5개 저장 (구분자: / . ,) --%>
	
	<c:set var="movies">
		아이언맨,토르/어벤져스.너의 이름은/살인자의기억
	</c:set>
	
	${ movies }
	<h4>영화목록</h4>
	<ol>
		<c:forEach var="m" items="${ movies }">
			<li>${ m }</li>
		</c:forEach>
	</ol>
	
	<ol>
		<c:forTokens var="m" items="${ movies }" delims="/.,">
			<li>${ m }</li>
		</c:forTokens>
	</ol>
	
	<hr>
	
	<h3>* url, query string 관련 - c:url, c:param</h3>
	<pre>
		- url 경로를 생성하고, query string을 정의해둘 수 있는 태그
		
		c:url var="변수명" value="요청할 url"
			c:param name="키값" value="데이터" 		/c:param
			c:param name="키값" value="데이터"		/c:param
		/c:url
	</pre>
	
	<a href="list.do?cpage=1&num=10">기존방식</a>
	
	<c:url var="listUrl" value="list.do">
		<c:param name="cpage" value="1"/>
		<c:param name="num" value="10"/>
	</c:url>
	
	<a href="${ listUrl }">JSTL 방식</a>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>