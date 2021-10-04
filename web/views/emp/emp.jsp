<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사원조회 결과</title>
</head>
<body>
	<h2>사원조회결과</h2>
	<ul>
		<li>사번 : ${e.empId }</li>
		<li>사원명 : ${e.empName }</li>
		<li>주민번호 : ${e.empNo }</li>
		<li>전화번호 : ${e.phone }</li>
		<li>이메일: ${e.email }</li>
		<li>월급 : <fmt:formatNumber value="${e.salary}" type="currency"/></li>
		<li>보너스 : <fmt:formatNumber value="${e.empId }" type="percent"/></li>
		<li>고욜일 :<fmt:formatDate value="${hireDate }" pattern="yyyy-MM-dd"/></li>
		<ul>부서
			<li>${e.dept.deptId }</li>
			<li>${e.dept.deptTitle }</li>
			<li>${e.dept.locationId }</li>
			
		</ul>
		
	</ul>
</body>
</html>