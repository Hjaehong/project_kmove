/**
 * 
 */
function createXHR(){
	if(window.XMLHttpRequest){
		return new XMLHttpRequest();
	}else {
		return  new ActiveXObject("Microsoft.XMLHTTP");
	}
}

var arr=new Array();
var xhr=null;

function sendRequest(method, url, callback, params){
	var httpMethod=method.toUpperCase();
	if(httpMethod !="GET" && httpMethod !="POST"){
		httpMethod="GET";
	}
	//arr.push("httpMethod:" + httpMethod);
	
	var httpParams=(params==null || params=="") ? null : params;
	//arr.push("httpParams:" + httpParams);
	
	var httpUrl=url;
	if(httpMethod=="GET" && httpParams !=null){
		httpUrl +="?" + httpParams;
	}
	//arr.push("httpUrl:" + httpUrl);
	
	xhr=createXHR();
	//arr.push("obj:" + xhr);
	
	xhr.open(httpMethod, httpUrl, true);
	xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhr.send(httpMethod=="POST" ? httpParams:null);
	xhr.onreadystatechange=callback;
}







