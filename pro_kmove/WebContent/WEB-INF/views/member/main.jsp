<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인페이지</title>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
	</div>
	<div id="loginOkMenu">
		<jsp:include page="/template/loginOkMenu.jsp"/>
	</div>
	
	<c:if test="${id !=null}">
		<div align="center">
			안녕하세요. (${id})님 즐거운 시간 되세요. <br/>
			 회원등급 ${grade} 입니다.
		</div>
	</c:if>
	
	<c:if test="${id==null}">
		<h3>
			회원가입 또는 로그인 하시면 더 많은 정보를 
			공유할 수 있습니다. 
		</h3>
	</c:if>
</body>
</html>