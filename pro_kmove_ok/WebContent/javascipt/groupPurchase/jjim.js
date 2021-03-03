/**
 * 
 */
function like(root, board_number, id){
	var url=root+"/groupPurchase/jjim.do";
	var params ="board_number=" + board_number;
	params += "&id=" + id;
	arr.push(url + "," + params);
	sendRequest("GET", url, likeFromServer, params);
	
	alert(arr.join("\n"));
}

function likeFromServer(){
	if(xhr.readyStats==4 && xhr.status==200){
		var board_number = xhr.responseText;
		var id = xhr.responseText;
	}
}