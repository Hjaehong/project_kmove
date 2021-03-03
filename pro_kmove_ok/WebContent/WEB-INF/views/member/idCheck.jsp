<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<script src="${root}/javascript/member/member.js" type="text/javascript"></script>
<script type="text/javascript">
	function sendCheckValue(){
	// 중복체크 결과인 idCheck 값을 전달한다.
		opener.document.memberForm.idCheckCheck.value ="idCheck";
		opener.memberForm.id.value="${id}";
	
		if (opener != null) {
	        opener.chkForm = null;
	        self.close();
		}	
	}		
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 체크</title>
</head>
<body>
	<c:if test="${check > 0 }">
		<div align="center">
			이미 사용중인 아이디 입니다.<br><br>
			<form action="${root}/member/idCheck.do" method="post">
				<input type="text" name="id"/><br>
				<input type="submit" value="확인"/>
				<input id="cancel" type="button" value="취소" onclick="window.close()"><br>
			</form>
		</div>
	</c:if>
	
	<c:if test="${check==0}">
			<div align="center">
				사용가능한 아이디 입니다.<br><br>
				<input type="text" name="Checkid" value="${id}" disabled="disabled"/>
				<input type="submit" value="확인" onclick="sendCheckValue()"/>
			</div>
	</c:if>
</body>
</html>