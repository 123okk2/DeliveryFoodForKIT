<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\home.css">
    <title>금오공대 배달평점</title>
    <%
    	//총 접속자
	    int visitor=1;
    	//지금은 1이라고 박아놨는데 db에서 빼서 저장해주셈
    	session.setAttribute("visitors", visitor);
    %>
    <script src="js/closer.js">
	    visitors.setCount(<%=Integer.parseInt(session.getAttribute("visitors").toString()) %>); 
	    visitors.addCount();
    </script>
    <%
    	//증가한 visitor db에 저장해놓는 거
    %>
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

    <div class="menu">
        <div class="first" id="first"><a href="chicken.jsp"> <img src="image/chicken.jpg" alt="치킨" width="400px" height="300px"></a><br>치킨</div>
        <div class="second" id="second"><a href="pizza.jsp"> <img src="image/pizza.jpg" alt="피자" width="400px" height="300px"></a><br>피자</div>
        <div class="third" id="third"><a href="chinese.jsp"> <img src="image/zzazang.jpg" alt="짜장면" width="400px" height="300px"></a><br>중식</div>
        <div class="fourth" id="fourth"><a href="korean.jsp"> <img src="image/kimchi.jpg" alt="김치찌개" width="400px" height="300px"></a><br>한식</div>
    </div>

	<jsp:include page="struct/footer.jsp"/>
</body>
</html>