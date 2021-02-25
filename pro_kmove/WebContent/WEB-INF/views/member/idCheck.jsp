<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 체크</title>
</head>
<body>
	<c:if test="${check > 0 }">
		<div align="center">
			이미 사용중인 아이디 입니다.
			<form action="${root}/member/idCheck.do" method="post">
				<input type="text" name="id"/>
				<input type="submit" value="확인"/>
			</form>
		</div>
	</c:if>
	
	<c:if test="${check==0}">
			<div align="center">
				사용가능한 아이디 입니다.
			</div>
	</c:if>
	
	<script type="text/javascript">
		opener.memberForm.id.value="${id}";
	</script>
	
	<br/><br/>
	<div align="center">
		<a href="javascript:self.close()">닫기</a>
	</div>
</body>
</html>
















