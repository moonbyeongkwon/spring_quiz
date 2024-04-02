<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz04</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>회원 정보 리스트</h1>
		<img src="/img/sunny.jpg">
		<table class="table text-center">
			<thead>
				<tr>
					<th>No</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>국적</th>
					<th>이메일</th>
					<th>자기소개</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<c:forEach items="${members}" var="member" varStatus="status">
					<td>${status.count}</td>
					<td>${member.name}</td>
					<td><c:set var="phoneNumber" value="${member.phoneNumber}" />
						<c:choose>
							<c:when test="${fn:startsWith(phoneNumber, '010')}">
								${member.phoneNumber}
							</c:when>
							<c:otherwise>
								유효하지 않은 전화번호
							</c:otherwise>
						</c:choose>
					</td>
					<td><c:set var="nation" value="${member.nationality}" />
						${fn:replace(nation, '삼국시대', '삼국 - ') }
					</td>
					<td><c:set var="email" value="${member.email}" />
						<b>${fn:split(email, '@')[0]}</b>@${fn:split(email, '@')[1]}
					</td>
					<td><c:set var="introduce" value="${member.introduce}" />
						<c:choose>
							<c:when test="${fn:length(introduce) > 15}">
								${fn:substring(introduce, 0, 15)}...
							</c:when>
							<c:otherwise>
								${member.introduce}
							</c:otherwise>
						</c:choose>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>