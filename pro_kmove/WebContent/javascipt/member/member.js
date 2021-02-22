/**
 * 
 */

function registerForm(obj){
	if(obj.id.value==""){
		alert("아이디를 반드시 입력해주세요.");
		obj.id.focus();
		return false;
	}
	
	if(obj.password.value==""){
		alert("비밀번호를 반드시 입력해주세요.");
		obj.password.focus();
		return false;
	}
	
	/*if(obj.password.value.length < 7){
		alert("비밀번호는 7자 이상부터 가능합니다.");
		obj.password.focus();
		return false;
	}*/
	
	if(obj.password.value != obj.passwordCheck.value){
		alert("비밀번호가 일치하지 않습니다.");
		obj.passwordCheck.focus();
		return false;
	}
	
	if(obj.name.value==""){
		alert("이름을 반드시 입력해주세요.");
		obj.name.focus();
		return false;
	}
	
	if(obj.nickName.value==""){
		alert("닉네임을 반드시 입력해주세요.");
		obj.nickName.focus();
		return false;
	}
	
	/*if(obj.nickName.value.length < 5 && obj.nickName.value.length > 10){
		alert("닉네임은 5자 이상, 10자 이내로만 가능합니다")
		obj.nickName.focus();
		return false;
	}*/
	
	if(obj.phone2.value==""){
		alert("핸드폰 번호를 입력해주세요.");
		obj.phone2.focus();
		return false;
	}
	
	if(obj.phone3.value==""){
		alert("핸드폰 번호를 입력해주세요.");
		obj.phone2.focus();
		return false;
	}
	
}
	
function idCheck(root, memberForm){
	if(memberForm.id.value==""){
		alert("아이디를 반드시 입력하세요.");
		memberForm.id.focus();
		return false;
	}
	
	var url=root + "/member/idCheck.do?id="+memberForm.id.value;
	window.open(url, "", "width=300, height=150")
	alert(url);
}

	/*function zipRead(root){
	var url=root + "/member/zipcode.do";
	window.open(url, "", "width=400, height=400, scrollbars=yes");
}

	function sendAddress(zipcode, sido, gugun, dong, ri, bunji){
	var address=sido + gugun + dong + ri + bunji;
	//alert(zipcode + "\n" + address); 
	
	opener.memberForm.zipcode.value=zipcode;
	opener.memberForm.address.value=address;
}*/

