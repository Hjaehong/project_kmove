<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴 결과</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath}" />

	<c:if test="${check > 0}">
		<c:remove var="id" scope="session"/>
		<c:remove var="memberDto" scope="session"/>
		<script type="text/javascript">
			alert("회원탈퇴가 완료되었습니다.");
			location.href="../main.jsp";
		</script>
	</c:if>
	
	<c:if test="${check ==0 }">
		<script type="text/javascript">
			alert("회원탈퇴에 실패했습니다.");
			location.href="${root}/member/delete.do";
		</script>
	</c:if>
</body>
</html>