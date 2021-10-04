<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이바티스 동적쿼리 이용하기</title>
</head>
<body>
	<a href="${pageContext.request.contextPath }/selectEmpAll">확인하기</a>
	<a href="${pageContext.request.contextPath }/selectOneEmp?no=200">사원조회하기</a>
	<a href="${pageContext.request.contextPath }/selectBoard?no=33">게시글 조회</a>
</body>
</html>