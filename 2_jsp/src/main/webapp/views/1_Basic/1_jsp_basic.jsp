<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>* JSP ELement 표현법 (JSP 문법)</h2>
	
	<h3>JSP 스크립트 원소</h3>
	<p>JSP 페이지에서 자바코드를 기술할 수 있는 문법(기능)</p>
	
	<ol>
		<li>
			스크립틀릿 : &lt;% %&gt; => <% %>
			자바 코드를 사용하기 위한 문법 (변수선언, 제어문 사용, ...)
		</li>
		<li>
			표현식(출력식) : &lt;%= %&gt; <br>
			값을 화면상에 출력하기 위한 문법 (변수, 메소드 호출, ...)
		</li>
		<li>
			선언문 : &lt;%! %&gt; <br>
			멤버 변수, 메소드를 선언하기 위한 문법
		</li>
	</ol>
	
	<a href="/2_jsp/views/1_Basic/2_scriptElement.jsp">views detail..</a>
	<br><br>
	<a href="2_scriptElement.jsp">views detail..</a>
	
	<hr>
	
	<h3>2) 지시어</h3>
	
	<p>
		JSP 페이지 전체에 영향을 미치는 설정(정보)을 작성할 떄 사용
		&lt;%@ page | include | taglib 속성="속성값" 속성="속성값" %&gt;
	</p>
	
	<ol>
		<li>
			page 지시어 : 현재 jsp 페이지를 처리할 때 필요한 속성들을 많이 지침
			<ul>
				<li>language : 사용할 언어 유형 지정</li>
				<li>contentType : 해당 페이지의 문서유형, 인코딩 설정</li>
				<li>pageEncodeing : 해당 페이지 내의 작성된 자바코드의 인코딩 설정</li>
				<li>import : 자바에서의 import와 동일</li>
				<li>errorPage : 현재 페이지에서 오류가 발생했을 때 보여줄 에러페이지 경로 설정</li>
				
			</ul>
			
			<a href="3_directivePage.jsp">view detail</a>
		</li>
		<li>
			include 지시어 : 현재 jsp페이지 내에 또 다른 jsp 페이지를 포함시키고자 할 때 사용
			<a href="4_directiveInclude.jsp">view detail</a>
		</li>
		
		<li>
			taglib 지시어 : jsp 기능을 확장시킬 수 있는 추가적인 라이브러리를 등록할 때 사용
		</li>
	</ol>
	
	
	
	
	
	
	
	
</body>
</html>