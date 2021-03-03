<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath}" />

	<c:if test="${memberDto != null}">
		<c:set var="id" value="${id}" scope="session"/>
		<c:set var="memberDto" value="${memberDto}" scope="session"/>
		
		<script type="text/javascript">
			//alert("회원인증이 완료되었습니다.");
			location.href="${root}/member/myMainPage.do";
		</script>
	</c:if>
	
	<c:if test="${memberDto ==null }">
		<script type="text/javascript">
			alert("비밀번호를 확인하세요.");
			location.href="${root}/member/myPage.do";
		</script>
	</c:if>
</body>
</html>