/**
 * 
 */


function registerForm(obj){
	
	var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
	var blank_pattern = /[\s]/g;
	
	if(obj.id.value==""){
		alert("아이디를 반드시 입력해주세요.");
		obj.id.focus();
		return false;
	}
	
	if(obj.id.value.length < 5){
		alert("아이디는 5글자 이상부터 가능합니다.");
		obj.id.focus();
		return false;
	}
	
	if(special_pattern.test(obj.id.value) == true){
    	alert("특수문자는 사용할 수 없습니다.");
    	return false;
	}

	if(obj.id.value.search(/\W|\s/g) > -1){
    	alert("특수문자 또는 공백을 입력할 수 없습니다.");
   		obj.id.focus();
    	return false;
	}

	if(blank_pattern.test(obj.id.value) == true){
    	alert(' 공백은 사용할 수 없습니다. ');
    	return false;
	}
	
	if(obj.idCheckCheck.value != "idCheck"){
		alert("아이디 중복체크를 해주세요.");
		return false;
	}
	
	if(obj.password.value==""){
		alert("비밀번호를 반드시 입력해주세요.");
		obj.password.focus();
		return false;
	}
	
	if(obj.password.value.length < 7){
		alert("비밀번호는 7자 이상부터 가능합니다.");
		obj.password.focus();
		return false;
	}
	
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
	
	if(obj.nickname.value==""){
		alert("닉네임을 반드시 입력해주세요.");
		obj.nickname.focus();
		return false;
	}
	
	if(obj.nickname.value.length < 5 && obj.nickname.value.length > 10){
		alert("닉네임은 5자 이상, 10자 이내로만 가능합니다")
		obj.nickname.focus();
		return false;
	}
	
	if(obj.phone2.value==""){
		alert("핸드폰 번호를 입력해주세요.");
		obj.phone2.focus();
		return false;
	}
	
	if(obj.phone3.value==""){
		alert("핸드폰 번호를 입력해주세요.");
		obj.phone3.focus();
		return false;
	}
	
}
	
function idCheck(root, memberForm){
	
	var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
	var blank_pattern = /[\s]/g;
	
	if(special_pattern.test(document.memberForm.id.value) == true){
    	alert("특수문자는 사용할 수 없습니다.");
    	return false;
	}

	if(document.memberForm.id.value.search(/\W|\s/g) > -1){
    	alert("특수문자 또는 공백을 입력할 수 없습니다.");
    	return false;
	}

	if(blank_pattern.test(document.memberForm.id.value) == true){
    	alert(' 공백은 사용할 수 없습니다. ');
    	return false;
	}
	
	if(document.memberForm.id.value.length < 5){
		alert("아이디는 5글자 이상부터 가능합니다.");
		return false;
	}
	if(memberForm.id.value==""){
		alert("아이디를 반드시 입력하세요.");
		memberForm.id.focus();
		return false;
	}
			
	var url=root + "/member/idCheck.do?id="+memberForm.id.value;
	window.open(url, "", "width=500, height=250");
	//alert(url);
}

function idCheck(root, memberForm){
	if(memberForm.id.value==""){
		alert("아이디를 반드시 입력하세요.");
		memberForm.id.focus();
		return false;
	}
	
	var url=root + "/member/idCheck.do?id="+memberForm.id.value;
	// alert(url);
	window.open(url, "", "width=300, height=150")
}

function inputIdCheck(){
	document.memberForm.idCheckCheck.value="idUnCheck";
}