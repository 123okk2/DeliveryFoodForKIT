/**
 * 
 */
var reg = document.getElementById("reg");
var regHandler = function (event) {
	switch (event.type) {
		case "click":
			alert("게시글이 등록되었습니다.")
			break;
	}
};
reg.onclick = regHandler;
