<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<c:set var="root" value="${pageContext.request.contextPath}" />
	
	<c:if test="${grade !=null}">
		<c:set var="id" value="${id}" scope="session"/>
		<c:set var="grade" value="${grade}" scope="session"/>
		
		<script type="text/javascript">
			//alert("로그인 성공!!! ${root}/member/main.do");
			location.href = "${root}/member/loginMain.do";
		</script>
	</c:if>
	
	<c:if test="${grade==null}">
		<script type="text/javascript">
			alert("아이디 또는 비밀번호를 확인해주세요.");
			location.href="${root}/member/login.do";
		</script>
	</c:if>
</body>
</html>