/**
 * 
 */
var rootreq;
function allimOk(board_number, root, id){
	rootreq = root;
	var url = root + "/allim/allim.do";
	var params = "board_number=" + board_number;
	params += "&id="+id;
	//arr.push(url+","+params);
	//alert(arr.join("\n"));
	sendRequest("POST", url, fromServer, params);
}
function fromServer(){
	//arr.push(xhr.readyState + "," + xhr.status);
	//alert(arr.join("\n"));
	if(xhr.readyState ==4&& xhr.status==200){
		var obj = JSON.parse(xhr.responseText);
		var id = obj.id;
		var board_number = obj.board_number;
		
		var div = document.getElementById(id);
		
		var allim = document.getElementById("allim");
		allim.removeChild(div);
	}
}