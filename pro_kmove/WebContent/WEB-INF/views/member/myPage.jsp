<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 정보보기</title>
<script type="text/javascript">
 function loginchk() {
	  var regx = /^[a-zA-Z0-9]*$/;
	  var id = document.form.id.value;
	  var pass = document.form.pass.value;
	  
	  if (pass.length < 6 || pass == null) {
	   	alert("비밀번호는 6글자이상입니다^^");
	   	document.form.pass.focus();
	   	return;
	  }
	  
	  if (!regx.test(pass)) {
	   	alert("비밀번호는 영어, 숫자만 입력가능합니다.");
	   	document.form.pass.focus();
	   	return false;
	  }
	  document.form.submit();
	 }
</script>
</head>
<body>
	<div id="topMenu">
		<jsp:include page="/template/topMenu.jsp"/>
	</div>
	
<form action="${root}/member/myPageOk.do" method="post">
   <div>
    <span>
    <b>아이디 : </b>
    	<input type="text" size="10" maxlength="15" name="id" class="inputid" value="${id}" disabled="disabled">&nbsp;
    <br><br>
    <b>비밀번호 : </b>
    	<input type="password" size="10" maxlength="15" name="password"><br><br>
     	<input type="submit" value="확인" align="middle" onclick="loginchk()" border="0" style="padding-left: 10px;">
    </span>
   </div>
</form>
</body>
</html>