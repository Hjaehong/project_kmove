<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#.09</title>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<link rel="stylesheet" href="${root}/css/style.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<nav class="menu">
		<div class="search">
			<input type="text" placeholder="Search">
			<input type="image" src="${root}/img/click1.png" alt="검색">
		</div>
		<div id="contents">
			<a href="../main.jsp" class=on><span><img alt="로고	" src="${root}/img/logo3.png"></span></a>
			<a href="${root}/groupPurchase/list.do"><span>공동구매</span></a>
			<a href="#" ><span>해외직구</span></a>
			<a href="#" ><span>주문제작</span></a>
			<a href="${root}/freeboard/freeboardList.do" ><span>자유게시판</span></a>
			<a href="../main.jsp" ><span>로그아웃</span></a>
			<a href="${root}/member/myPage.do"><span>마이페이지</span></a>
			<span></span>
		</div> 
	</nav>	
		<div id="main" class="box0">
			<div class="box1">
				<div class="box-wrap">
					<div class="box">
						<div class="img">
						<img src="${root}/img/gong2.png" alt="오버 이펙트">
			</div>
			<div class="info">
				<h3>공동구매</h3>
				<p>같이 구매할꺼임?</p>
			</div>
		</div>
	</div>
				<div class="box-cnt"><a href="#"><img alt="해외직구" src="${root}/img/hae2.png"><br>해외직구</a></div>
			</div>
			<div class="box2">
				<div class="box-cnt"><a href="#"><img alt="주문제작" src="${root}/img/make2.png"><br>주문제작</a></div>
				<div class="box-cnt"><a href="#"><img alt="자유게시판" src="${root}/img/ja2.png"><br>자유게시판</a></div>
			</div>
			<footer>
				ⓒshop.09<br>
				<a href="#">블랙리스트</a>
			</footer>
		</div>	
		
		

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