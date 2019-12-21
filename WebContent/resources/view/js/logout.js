/**
 * 
 */
var logout = document.getElementById("logout");

var LogOutHandler = function (event) {
	switch (event.type) {
		case "click":
			alert("로그아웃 되었습니다.")
			break;
		case "mouseover":
			event.target.style.color = "red";
			break;
		case "mouseout":
			event.target.style.color = "white";
			break;
	}
};

logout.onclick = LogOutHandler;
logout.onmouseover = LogOutHandler;
logout.onmouseout = LogOutHandler;