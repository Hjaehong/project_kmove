/**
 * 
 */
function cancelToServer(id, root, board_number){
	var url = root + "/groupPurchase/delete.do"
	
	var params = "id="+id;
	params+="&board_number="+board_number;
	sendRequest("GET", url, cancelFromServer, params);
}
function cancelFromServer(){
	//arr.push(xhr.readyState + "," + xhr.status);
	//alert(arr.join("\n"));
	if(xhr.readyState==4&&xhr.status==200){
		var id = xhr.responseText;
		var div = document.getElementById(id);
		
		var enter = document.getElementById("enter");
		enter.removeChild(div);
	}
}