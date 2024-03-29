<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<h1>1. JSTL 숫자 변수</h1>
	<c:set var="number1" value="36" /><br>
	<c:set var="number2" value="3" /><br>
	
	첫번째 숫자: ${number1}<br>
	두번째 숫자: ${number2}<br>
	
	<h1>2. JSTL 연산</h1>
	더하기: ${number1 + number2}<br>
	빼기: ${number1 - number2}<br>
	곱하기: ${number1 * number2}<br>
	나누기: ${number1 / number2}<br>
	
	<h1>3. JSTL core out</h1>
	<c:out value="<title>core out</title>"/><br>
	
	<h1>4. JSTL core if</h1>
	<%-- 1번문제에서 사용한 두 변수의 평균이 10 이상이면
	 평균 값을 <h1> 태그로 출력하고,
	  10 미만이면 <h3> 태그로 출력하세요.
	출력 예시 --%>
	<c:set var="ave" value="${(number1 + number2) / 2}" />
	<c:if test="${ave >= 10}">
		<h1>${ave}</h1>
	</c:if>
	<c:if test="${ave < 10}">
		<h3>${ave}</h3>
	</c:if>
	
	<h1>5. core if</h1>
	<%-- 1번 문제에서 사용한 두변수의 곱의 결과가 100 이 넘는다면
	 너무 큰 수입니다. 를 core out 을 통해서 alert창으로 출력하세요.--%>
	 <c:set var="multi" value="${number1 * number2}" />
	 
	 <c:if test="${multi > 100}">
		 <c:out value="<script>alert('너무 큰 수입니다.')</script>" escapeXml="false" /><br>
	 </c:if>
</body>
</html>