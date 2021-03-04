<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
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
	
	function idForm(){
		
		var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
		var blank_pattern = /[\s]/g;
		
		if(special_pattern.test(document.memberCheck.id.value) == true){
	    	alert("특수문자는 사용할 수 없습니다.");
	    	return false;
		}

		if(document.memberCheck.id.value.search(/\W|\s/g) > -1){
	    	alert("특수문자 또는 공백을 입력할 수 없습니다.");
	    	return false;
		}

		if(blank_pattern.test(document.memberCheck.id.value) == true){
	    	alert(' 공백은 사용할 수 없습니다. ');
	    	return false;
		}
		
		if(document.memberCheck.id.value.length < 5){
			alert("아이디는 5글자 이상부터 가능합니다.");
			return false;
		}
		if(document.memberCheck.value==""){
			alert("아이디를 반드시 입력하세요.");
			return false;
		}
				
		var url=root + "/member/idCheck.do?id="+document.memberCheck.id.value;
		window.location.replace(url, "", "width=500, height=250");
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
			<form action="${root}/member/idCheck.do" method="post" name="memberCheck"
				onsubmit="return idForm(this)">
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