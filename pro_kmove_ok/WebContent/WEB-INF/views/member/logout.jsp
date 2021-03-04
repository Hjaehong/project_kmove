<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>09</title>
<c:remove var="id" scope="session"/>
<c:remove var="memberDto" scope="session"/>
<c:set var="root" value="${pageContext.request.contextPath}"/>
 <script type="text/javascript">
 window.history.forward();
</script>
</head>
<body onload="noBack();" onpageshow="if(event.persisted) noBack();" onunload="">
	<script type="text/javascript">
		alert("로그아웃 되었습니다.");
		location.href="../main.jsp";
	</script>

</body>
</html>