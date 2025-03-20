<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 시작하기</title>
</head>
<body>
	<h1>JSP(Java Server Page)</h1>

    <p>
        JSP란? : HTML코드 내에서 Java 코드를 쓸 수 있는 <b>자바 언어</b>이다. <br>
        Servlet만으로 응답화면을 구현할 때 복잡하고 불편했던 부분을 간단하게 하는 기능
        => 즉 JSP의 가장 큰 장점은 Servlet에서는 비즈니스 로직에만 집중하고 <br>
                                  JSP에서는 프리젠테이션 로직(화면 구현)에 집중하도록 분리하는 것
    </p>

    <hr>

    <a href="views/1_Basic/1_jsp_basic.jsp">기본 문법</a>
    
    <hr>
    
    <h2>* EL (Expression Language)</h2>
    
    <p>
    	기존에 사용했던 표현식(출력) : &lt;%= 변수/메소드 호출 %&gt; <br>
    	
    	위에 표현식과 비슷하게 jsp상에 표현하고자 하는 값을 작성하는 방법 <br>
    	=> \${ 변수/메소드호출 } 형식으로 작성
    </p>
    
    <%-- 서블릿으로 요청 시 반드시 context path 뒤에 url이 붙어야 함! --%>
    <a href="/2_jsp/el.do">[1] EL 기본문법 (절대경로)</a>
    <a href="el.do">[1] EL 기본문법 (상대경로)</a>
    
    <a href="operator.do">[2] EL 연산자</a>
</body>
</html>