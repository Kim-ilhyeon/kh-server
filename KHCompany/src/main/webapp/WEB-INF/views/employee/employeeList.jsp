<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KH Company</title>
<!--  BootStrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!-- ---------- -->
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<main class="container-lg">
		<table class="table table-primary table-striped table-hover">
			<thead>
				<tr>
					<th>사원번호</th>
					<th>사원명</th>
					<th>부서명</th>
					<th>직급명</th>
					<th>입사일</th>
					<th><button>★</button></th>
				</tr>
			</thead>
			<tbody class="table table-info">
			<article>
				<button type="button" onclick="location.href='../insertEmp'" class="btn btn-success">사원추가</button>
				<a href="insertEmp">a태그</a>
			</article>
				<c:choose>
					<c:when test="${ not empty list }">
						<%-- 조회 결과가 있을 경우 한 행씩 출력 --%>
						<c:forEach var="emp" items="${ list }">
							<tr>
								<td>${ emp.empId }</td>
								<td>${ emp.empName }</td>
								<td>${ emp.dept }</td>
								<td>${ emp.job }</td>
								<td>${ emp.hireDate }</td>
								<td colspan="${ list.size() }"></td>
							</tr>
						</c:forEach>
					</c:when>

					<c:otherwise>
						<%-- 조회 결과가 없을 경우 "조회된 사원이 없습니다." 출력 --%>
						<tr>
							<td colspan="5">조회된 전시회가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</main>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>