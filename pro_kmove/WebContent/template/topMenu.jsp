<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>검색, 메뉴</title>
</head>
<body>
	<div align="center">
		<a href="${root}/groupPurchase/list.stu">공동구매</a>
		|
		<a href="${root}/forCountry/forCountry.stu">해외직구</a>
		|
		<a href="${root}/customOrder/customOrder.stu">주문제작</a>
		|
		<a href="${root}/board/board.stu">자유게시판</a>
	</div>
</body>
</html>