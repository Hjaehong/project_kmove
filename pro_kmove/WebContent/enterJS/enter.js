/**
 * 
 */
var reqroot=null;
function enter(root, id, board_number) {
	reqroot = root;
	var url = root+"/groupPurchase/enter.do";
	var params = "id=" + id;
	params += "&board_number="+board_number;

	//arr.push(url+","+params);
	//alert(arr.join("\n"));
	sendRequest("POST", url, fromServer, params);
}

function fromServer() {
	//arr.push(xhr.readyState + "," + xhr.status);
	if (xhr.readyState == 4 && xhr.status == 200) {
		var obj = JSON.parse(xhr.responseText);	
		var id = obj.id;
		
		var enter = document.getElementById("enter");
		var div = document.createElement("div");
		div.className="enterDiv";
		//div.innerHTML="id : " + id;
		
		var spanId = document.createElement("span");
		spanId.className="enteredid";
		spanId.innerHTML="id : " + id;
		
		div.appendChild(spanId);
		enter.appendChild(div);
	}
	//arr.push(id);
	//alert(arr.join("\n"));
	
	
}