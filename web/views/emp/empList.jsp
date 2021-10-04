<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div id="search-container">
		<form action="${path }/searchEmp" method="post">
			
		<table>
				<tr>
				<td>
				<select name="searchType">
					<option value="검색타입" disabled selected>검색타입</option>
					<option value="emp_id">사원번호</option>
					<option value="emp_name">사원이름</option>
					<option value="phone">사원이름</option>
					<option value="email">이메일</option>
					
				</select>
				</td>
				<td>
					<input type="search" name="searchKeyword"/>
				
					
					
				</td>
				<tr>
				
				<td>성별</td>
					<td>
						<input type="radio" value="M" name="gender">남
						<input type="radio" value="F" name="gender">여
					</td>
				</tr>
				<tr>
				<td>급여</td>
				<td>
					<input type="number" name="salary" step="100000" min="1000000">
					<input type="radio" name="le_ge" value="le">이상
					<input type="radio" name="le_ge" value="ge">이하
				</td>
				</tr>
				<tr>
				<td>입사일</td>
				<td>
					<input type="date" name="hiredate">
					<input type="radio" name="h_le_ge" value="le">이상
					<input type="radio" name="h_le_ge" value="ge">이하
				</td>
				</tr>
				<tr>
					<td>직책별조회</td>
					<td>
						<input type="checkbox" name="jobcode" value="J1">대표이사
						<input type="checkbox" name="jobcode" value="J2">부사장
						<input type="checkbox" name="jobcode" value="J3">부장
						<input type="checkbox" name="jobcode" value="J4">차장
						<input type="checkbox" name="jobcode" value="J5">과장						<input type="checkbox" name="jobcode" value="J1">대
						<input type="checkbox" name="jobcode" value="J6">대리
						<input type="checkbox" name="jobcode" value="J7">사원
					</td>
					
				</tr>
				<tr>
					<td colspan="2">
					<input type="submit" value="조회"/>
					</td>
				</tr>
		
			</table>
		</form>
	</div>
	<table>
		<tr>
		<th>아이디</th>
		<th>이름</th>
		<th>주민번호</th>
		<th>이메일</th>
		<th>핸드폰</th>
		<th>부서코드</th>
		<th>잡코드</th>
		<th>월급</th>
		<th>보너스</th>
		<th>매니저번호</th>
		<th>입사일</th>
		<th>퇴사일</th>
		<th>체크</th>
		<th>성별</th>
		</tr>
		<c:forEach var="e" items="${list }">
		<tr>
			<td>${e.empId }</td>
			<td>${e.empName }</td>
			<td>${e.empNo }</td>
			<td>${e.email }</td>
			<td>${e.phone }</td>
			<td>${e.deptCode }</td>
			<td>${e.jobCode }</td>
			<td><fmt:formatNumber value="${e.salary }" type="currency"/></td>
			<td><fmt:formatNumber value="${e.bonus }" type="percent"/></td>
			<td>${e.managerId }</td>
			<td>${e.hireDate }</td>
			<td>${e.entDate }</td>
			<td>${e.entYn }</td>
			<td>${e.gender eq 'M'?"남":"여"}</td>
		</tr>	
		</c:forEach>
	</table>
	<div id=pagebar-container>
	${pageBar }
	</div>
</body>
</html>