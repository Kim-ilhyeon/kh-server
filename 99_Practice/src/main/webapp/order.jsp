<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습2 피자주문 </title>
<style>
	table {
		border: 2px solid; border-collapse: collapse;
	}
	th, td {
		border: 1px solid; padding: 10px;
	}
	#pink {
		color: rgb(221, 101, 151);
	}
</style>
</head>
<body>
	<% Date today = new Date(); %>
	<h1>오늘은 <span id="pink"> <%=today %> </span>입니다.</h1>
	<h1>피자 아카데미</h1>
	<table>
		<tr>
			<th>종류</th>
			<th>이름</th>
			<th>가격</th>
			<th></th>
			<th>종류</th>
			<th>이름</th>
			<th>가격</th>
		</tr>
		<tr>
			<td rowspan="5">피자</td>
			<td>치즈피자</td>
			<td>5000</td>
			<td rowspan="12"></td>
			<td rowspan="11">사이드</td>
			<td>오븐구이통닭</td>
			<td>9000</td>
		</tr>
		<tr>
			<td>콤비네이션피자</td>
			<td>6000</td>
			<td>치킨스틱&윙</td>
			<td>4900</td>
		</tr>
		<tr>
			<td>포테이토피자</td>
			<td>7000</td>
			<td>치즈오븐스파게티</td>
			<td>4000</td>
		</tr>
		<tr>
			<td>고구마피자</td>
			<td>7000</td>
			<td>새우링&웨지감자</td>
			<td>3500</td>
		</tr>
		<tr>
			<td>불고기피자</td>
			<td>8000</td>
			<td>갈릭포테이토</td>
			<td>3000</td>
		</tr>
		<tr>
			<td rowspan="6">토핑</td>
			<td>고구마무스</td>
			<td>1000</td>
			<td>콜라</td>
			<td>1500</td>
		</tr>
		<tr>
			<td>콘크림무스</td>
			<td>1500</td>
			<td>사이다</td>
			<td>1500</td>
		</tr>
		<tr>
			<td>파인애플토핑</td>
			<td>2000</td>
			<td>갈릭소스</td>
			<td>500</td>
		</tr>
		<tr>
			<td>치즈토핑</td>
			<td>2000</td>
			<td>피클</td>
			<td>500</td>
		</tr>
		<tr>
			<td>치즈크러스트</td>
			<td>2000</td>
			<td>핫소스</td>
			<td>100</td>
		</tr>
		<tr>
			<td>치즈바이트</td>
			<td>3000</td>
			<td>파마산 치즈가루</td>
			<td>100</td>
		</tr>
		
	</table>

	<br><br>

	<form action="/practice/pizza.order" method="get">
	피자 :
	<select name="pizza" id="pizza">
	<option selected value="치즈피자 5000">치즈피자</option>
	<option value="콤비네이션피자 6000">콤비네이션피자</option>
	<option value="포테이토피자 7000">포테이토피자</option>
	<option value="고구마피자 7000">고구마피자</option>
	<option value="불고기피자 8000">불고기피자</option>
	</select>

	<br>

	토핑 :
	<input type="checkbox" id="goguma" name="toping" value="고구마무스 1000">
	<label for="">고구마무스</label>
	<input type="checkbox" id="cornCream" name="toping" value="콘크림무스 1500">
	<label for="">콘크림무스</label>
	<input type="checkbox" id="prneapple" name="toping" value="파인애플토핑 2000">
	<label for="">파인애플토핑</label>
	<input type="checkbox" id="cheese" name="toping" value="치즈토핑 2000">
	<label for="">치즈토핑</label>
	<input type="checkbox" id="chesseCrust" name="toping" value="치즈크러스트 2000">
	<label for="">치즈크러스트</label>
	<input type="checkbox" id="cheeseByte" name="toping" value="치즈바이트 3000">
	<label for="">치즈바이트</label>

	<br>

	사이드 :
	<input type="checkbox" id="oven" name="side" value="오븐구이통닭 9000">
	<label for="oven">오븐구이통닭</label>
	<input type="checkbox" id="cheeseStick" name="side" value="치즈스틱&윙 4900">
	<label for="cheeseStick">치즈스틱&윙</label>
	<input type="checkbox" id="sphagetti" name="side" value="치즈오븐스파게티 4000">
	<label for="sphagetti">치즈오븐스파게티</label>
	<input type="checkbox" id="wegiPotato" name="side" value="새우링&웨지감자 3500">
	<label for="wegiPotato">새우링&웨지감자</label>
	<input type="checkbox" id="galicPotato" name="side" value="갈릭포테이토 3000">
	<label for="galicPotato">갈릭포테이토</label>
	<input type="checkbox" id="coke" name="side" value="콜라 1500">
	<label for="coke">콜라</label>
	<input type="checkbox" id="sprite" name="side" value="사이다 1500">
	<label for="sprite">사이다</label>
	<input type="checkbox" id="galicSouce" name="side" value="갈릭소스 500">
	<label for="galicSouce">갈릭소스</label>
	<input type="checkbox" id="pickle" name="side" value="피클 500">
	<label for="pickle">피클</label>
	<input type="checkbox" id="hotSouce" name="side" value="핫소스 100">
	<label for="hotSouce">핫소스</label>
	<input type="checkbox" id="phamasan" name="side" value="파마산치즈가루 100">
	<label for="phamasan">파마산치즈가루</label>

	<br>

	<input type="submit" value="확인">
	</form>
</body>
</html>