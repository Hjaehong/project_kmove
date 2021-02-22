<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>우편번호</title>
<script type="text/javascript" src="${root}/javascript/member/member.js"></script>
</head>
<body>
	<h3>${id}</h3> <br/>
	<h3>${memberLevel}</h3>
	
	<form action="${root}/member/zipcode.do" method="post">
		<table align="center">
			<tr>
				<td>
					<input type="text" name="dong"/>
					<input type="submit" value="검색"/>
				</td>
			</tr>	
		</table>
	</form>
		
	<table align="center">
		<c:choose>
			<c:when test="${zipcodeList.size()==0}">
				<tr>
					<td>검색된 결과가 없습니다.</td>
				</tr>
			</c:when>
			
			<c:when test="${zipcodeList.size() > 0}">
				<tr>
					<td align="center">아래의 우편번호를 클릭하세요.</td>
				</tr>
			
				<c:forEach var="zipcodeDto" items="${zipcodeList}">
					<tr>
						<td>
							<a href="javascript:sendAddress('${zipcodeDto.zipcode}', '${zipcodeDto.sido}',
								'${zipcodeDto.gugun}', '${zipcodeDto.dong}',
								'${zipcodeDto.ri}', '${zipcodeDto.bunji}')">
						
								${zipcodeDto.zipcode} ${zipcodeDto.sido} 
								${zipcodeDto.gugun} ${zipcodeDto.dong} 
								${zipcodeDto.ri} ${zipcodeDto.bunji}
							</a>
						</td>
					</tr>
				</c:forEach>
				
			 </c:when>
		</c:choose>
	</table>
	
	<div align="center">
		<a href="javascript:self.close()">닫기</a>
	</div>
</body>
</html>


















