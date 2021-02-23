<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
<script src="${root}/javascipt/member/member.js" type="text/javascript"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("mainAddress").value = roadAddr + " " + data.jibunAddress;
                //document.getElementById("sample4_roadAddress").value = roadAddr;
                //document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                /*if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }*/

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
</head>
<body>
	<div align="center">
		<font size="2"><b>회원가입(*필수입력사항입니다.)</b></font>
	</div>

	<div align="center">
		<form class="form_style" name="memberForm" action="${root}/member/registerOk.do" 
		          method="post" onsubmit="return registerForm(this)">
		                                          <%-- 기본값 : 참(true) --%>
		          <input type="hidden" name="member_number" value="${member_number}"/>
			<div class="line">
				<label class="title">아이디</label>
				<span class="content">
					*<input type="text" name="id" />	
					<input type="button" value="아이디중복" 
					                             onclick="idCheck('${root}', memberForm)" />
				</span>
			</div>
			
			<div class="line">
				<label  class="title">비밀번호</label>
				<span class="content">
					*<input type="password" name="password" />
				</span>
			</div>
			
			<div class="line">
				<label class="title">비밀번호확인</label>
				<span class="content">
					*<input type="password" name="passwordCheck"/>
				</span>
			</div>
	
			<div class="line">
				<label class="title">이름</label>
				<span class="content">
					*<input type="text" name="name"/>
				</span>
			</div>

			<div class="line">
				<label class="title">닉네임</label>
				<span class="content">
					*<input type="text" name="nickname" />
				</span>
			</div>
			
			<div class="line">
				<label class="title">핸드폰</label>
				<span class="content">
					*<select name="phone1">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="070">070</option>
					 </select>
					-<input type="text" name="phone2" size=9/>
					-<input type="text" name="phone3" size=9/>
				</span>
			</div>
			
			<div class="line">
				<input type="text" id="sample4_postcode" name="sample4_postcode" placeholder="우편번호">
				<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="mainAddress" name="mainAddress" palceholder="전체 주소" size="50">
				<span id="guide" style="color:#999;display:none"></span>
			</div>
			<div class="line" style="width:498px; border-width:2px; text-align:center;">
				<input type="submit" value="가입" />
				<input type="reset" value="취소" onclick="location.href='../index.jsp'"/>
			</div>
		</form>
	</div>
</body>
</html>