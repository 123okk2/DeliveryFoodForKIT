/**
 * 
 */
var login = document.getElementById("login");
var register = document.getElementById("membership");

var LogInHandler = function (event) {
	switch (event.type) {
		case "click":
			break;
		case "mouseover":
			event.target.style.color = "yellow";
			break;
		case "mouseout":
			event.target.style.color = "white";
			break;
		}
};
	

login.onclick = LogInHandler;
login.onmouseover = LogInHandler;
login.onmouseout = LogInHandler;

register.onclick = LogInHandler;
register.onmouseover = LogInHandler;
register.onmouseout = LogInHandler;
