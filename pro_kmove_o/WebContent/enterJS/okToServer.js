/**
 * 
 */
reqroot = null;
function okToServer(id, root, board_number){
	reqroot = root;
	var url = root + "/groupPurchase/enterOk.do"
	var params = "id=" + id;
	params +="&board_number="+board_number
	//arr.push(id+","+board_number);
	//alert(arr.join("\n"));
	sendRequest("GET", url, okFromServer, params);
}
function okFromServer(){
	//arr.push(xhr.readyState + "," + xhr.status);
	//alert(arr.join("\n"));
	if(xhr.readyState==4 && xhr.status==200){
		var obj = JSON.parse(xhr.responseText);
		var id = obj.id;
		var enter = document.getElementById("enter");
		
		var cssid = document.getElementsByClassName("cssid");
		cssid[0].innerHTML = "id : " + id;
	}
}