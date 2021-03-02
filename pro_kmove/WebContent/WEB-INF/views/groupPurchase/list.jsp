<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}/css/stylebuy.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div class="contents">
			<a href="#" ><span><img alt="로고	" src="${root}/img/logo3.png" alt="메인로고"></span></a>
			<a href="${root}/groupPurchase/list.do" class=on><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="#" ><span>자유게시판</span></a>
			<a href="${root}/member/login.do" ><span>로그인</span></a>
			<a href="${root}/member/register.do" ><span>회원가입</span></a>
			<span></span>
		</div> 
	</nav>
	<div class="wrap">
		<div class="main">
			<div>
				<h1><span>공동구매</span></h1>
			</div>
				<div class="top">
					<div class="check">
						<a href="#">시간임박순</a>
						<a href="#">인원마감순</a>
						<a href="#">최신순</a>
						<a href="#">인기순</a>
					</div>
					<div class="page_top">
						<a href="#">&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a><a href="#">&gt;</a>
					</div>
				</div>
				<div class="card_box">
						<div class="card_cnt">
				<c:forEach var="groupboardDto" items="${groupboardList}">
						<div class="shadow" onclick="location.href='${root}/groupPurchase/read.do?board_number=${groupboardDto.board_number}&pageNumber=${currentPage}'"><div class="card_cnt_top"><div id="today"><fmt:formatDate value="${groupboardDto.write_date}" pattern="yyyy-MM-dd"/></div><div id=jjim>♥♡</div></div>
						<div class="image"></div>
							<div class="cont">
								<strong>${groupboardDto.subject}</strong>
								<p>${groupboardDto.enterpeople}/${groupboardDto.peoplecount}</p>
								<p>${groupboardDto.contents}</p>
							</div>
						</div>
				</c:forEach>
					</div>
				</div>
			<div class="page_bot">
				<a href="#">&lt;</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><a href="#">7</a><a href="#">8</a><a href="#">9</a><a href="#">10</a><a href="#">&gt;</a>
				<br/><input type="text"placeholder="검색">
			</div>
		</div>
	</div>
	<footer>
		ⓒshop.09<br> 블랙리스트<a href="#">바로가기</a>
	</footer>


	<script type="text/javascript">
		$(document).ready(function(){
			$('nav a').on('click',function(){
				$(this).addClass('on');
				$(this).siblings().removeClass('on');
			});
		});
	</script>
</body>
</html>