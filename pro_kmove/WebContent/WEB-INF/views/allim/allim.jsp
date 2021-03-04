<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="root" value="${pageContext.request.contextPath}"/>
</head>
<body>
	<c:if test="${trig.size()!=0}">
		<c:forEach var="trig" items="${trig}">
			<a href="javascript:allimOk('${trig.board_number}', '${root}', '${trig.id}')">알림 &nbsp;</a>
			<a href="${root}/groupPurchase/read.do?board_number=${groupboardDto.board_number}&pageNumber=${currentPage}">${trig.board_number}번 글에 새로운 참가자</a>
		</c:forEach>
	</c:if>
</body>
</html>