<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"
 %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set var="root" value="${pageContext.request.contextPath}"/>
</head>
<body>
	<c:if test="${check > 0}">
		<script type="text/javascript">
			alert("글삭제 성공")
			location.href="${root}/freeboard/freeboardList.do?pageNumber=${pageNumber}";
		</script>
	</c:if>
	<c:if test="${check == 0}">
		<script type="text/javascript">
			alert("글삭제 실패")
			location.href="${root}/freeboard/freeboardList.dopageNumber=${pageNumber}";
		</script>
	</c:if>
</body>
</html>