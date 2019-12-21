/**
 * 
 */
var upd = document.getElementById("upd");
var updHandler = function (event) {
	switch (event.type) {
		case "click":
			alert("게시글이 수정되었습니다.")
			break;
	}
};
upd.onclick = updHandler;

