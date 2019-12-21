/**
 * 
 */




var del = document.getElementById("del");
var delHandler = function (event) {
	switch (event.type) {
		case "click":
			alert("게시글이 삭제되었습니다.")
			break;
	}
};
del.onclick = delHandler;