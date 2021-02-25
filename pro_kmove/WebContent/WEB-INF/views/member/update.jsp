<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script src="${root}/javascript/member/script.js" type="text/javascript"></script>
</head>
<body>
	<div align="center">
		<font size="2"><b>회원수정</b></font>
	</div>

	<div align="center">
		<form class="form_style" name="memberForm" action="${root}/member/updateOk.do" 
		          method="post" onsubmit="return registerForm(this)">
		                                          <%-- 기본값 : 참(true) --%>
			<div class="line">
				<label class="title">아이디</label>
				<span class="content">
					*<input type="text" name="id" value="${memberDto.id}" disabled="disabled"/>	
					<input type="hidden" name="num" value="${memberDto.num}"/>
				</span>
			</div>
			
			<div class="line">
				<label  class="title">비밀번호</label>
				<span class="content">
					*<input type="password" name="password" value="${memberDto.password}"/>
				</span>
			</div>
			
			<div class="line">
				<label class="title">비밀번호확인</label>
				<span class="content">
					*<input type="password" name="passwordCheck" value="${memberDto.password}"/>
				</span>
			</div>
	
			<div class="line">
				<label class="title">이름</label>
				<span class="content">
					*<input type="text" name="name" value="${memberDto.name}" disabled="disabled"/>
				</span>
			</div>
			

			
			<div class="line">
				<label class="title">우편번호</label>
				<span class="content">
					<input type="text" name="zipcode"  value="${memberDto.zipcode}"/>
					<input type="button" value="우편번호검색" onclick="zipcodeRead('${root}')"/>
				</span>
		  	</div>
			
			<div class="line">
				<label class="title">주소</label>
				<span class="content">
					<input type="text" name="address" size="48"  value="${memberDto.address}"/>
				</span>
			</div>
			
			<div class="line" style="width:498px; border-width:2px; text-align:center;">
				<input type="submit" value="수정" />
				<input type="reset" value="취소" />
			</div>
		</form>
	</div>
</body>
</html>






