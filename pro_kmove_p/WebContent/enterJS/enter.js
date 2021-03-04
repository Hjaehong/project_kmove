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
		if(obj.dont!=1){	
			var id = obj.id;
			var board_number = obj.board_number;
			
			var enter = document.getElementById("enter");
			var div = document.createElement("div");
			div.className="enterDiv";
			div.id=id;
			//div.innerHTML="id : " + id;
			
			var enterid = document.createElement("span");
			enterid.class="cssid";
			enterid.innerHTML="id : "+id;
			
			var aOk = document.createElement("a");
			aOk.href = "javascript:okToServer(" + id + ",\'" + reqroot + ",\'"+ board_number+"\')";
			aOk.innerHTML="&nbsp 수락 &nbsp";
			
			var aDelete = document.createElement("a");
			aDelete.href="javascript:cancelToServer(" + id + ",\'" + reqroot + ",\'"+ board_number+"\')";
			aDelete.innerHTML="삭제";
			
			div.appendChild(enterid);
			enterid.appendChild(aOk);
			enterid.appendChild(aDelete);
			enter.appendChild(div);
		}else{
			alert("인원이 꽉찼습니다.");
		}
	}
	//arr.push(id);
	//alert(arr.join("\n"));
	
	
}