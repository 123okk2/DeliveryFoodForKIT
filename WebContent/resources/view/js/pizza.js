/**
 * 
 */     		
var div = document.getElementById("pizzabig");
var handler = function (event) {
	switch (event.type) {
		case "click":
			location.href="restaurant.jsp?resName=pizzabig&search=";
			break;
		}
};
	
div.onclick = handler;
div.onmouseover = handler;
div.onmouseout = handler;

var div2 = document.getElementById("bigstar");

var handler2 = function (event) {
	switch (event.type) {
		case "click":
			location.href="restaurant.jsp?resName=bigstar&search=";
			break;
		}
};

div2.onclick = handler2;
div2.onmouseover = handler2;
div2.onmouseout = handler2;

var div3 = document.getElementById("pizzashop");

var handler3 = function (event) {
	switch (event.type) {
		case "click":
			location.href="restaurant.jsp?resName=pizzashop&search=";
			break;
		}
};

div3.onclick = handler3;
div3.onmouseover = handler3;
div3.onmouseout = handler3;