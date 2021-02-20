<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="root" value="${pageContext.request.contextPath}"/>
<title>게시판 읽기</title>
<link rel="stylesheet" type="text/css" href="${root}/css/main.css"/>
<script type="text/javascript" src="${root}/javascipt/groupPurchase/script.js"></script>
<script type="text/javascript">
	function replyFun(root, board_number, group_number, sequence_number, sequence_level, pageNumber) {
		var url = root + "/groupPurchase/write.stu?board_number=" + board_number;
		url +="&group_number=" + group_number;
		url +="&sequence_number=" + sequence_number;
		url +="&sequence_level=" + sequence_level;
		url +="&pageNumber=" + pageNumber;
		location.href = url;
	}
</script>
</head>
<body>
	<table border="1" width="510" cellpadding="2"  cellspacing="0" align="center">
		<tr>
			<td align="center"  height="20" width="125">글번호</td>
			<td align="center"  height="20" width="125">${groupboardDto.board_number}</td>
			
			<td align="center"  height="20" width="125">조회수</td>
			<td align="center"  height="20" width="125">${groupboardDto.read_count}</td>
		</tr>
		
		<tr>
			<td align="center"  height="20" width="125">작성자</td>
			<td align="center"  height="20" width="125">${groupboardDto.writer}</td>
			
			<td align="center"  height="20" width="125">작성일</td>
			<td align="center"  height="20" width="125"><fmt:formatDate value="${groupboardDto.write_date}" pattern="yy-MM-dd HH:mm:ss"/></td>
		</tr>
		
		<tr>
			<td align="center"  height="200" width="125">글내용</td>
			<td valign="top"  height="200" colspan="3">${groupboardDto.content}</td>
		</tr>
		
		<tr>
			<td height="30" colspan="4" align="center">
				<input type="button" value="글목록" onclick="location.href='${root}/groupPurchase/list.stu?pageNumber=${pageNumber}'"/>
			</td>
		</tr>
	</table>
</body>
</html>








