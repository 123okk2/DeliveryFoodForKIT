<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\membership.css">
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

    <form action="../systemjsp/signup.jsp" method="post" class=input>
    	<div class="input">
	        <h2>회원가입</h2>
	        <br>
	        <label>아이디</label>
	        <input type="text" id="ID" name="ID">
	        <br>
	        <label>비밀번호</label>
	        <input type="password" id="password" name="password">
	        <br>
	        <label>전화번호</label>
	        <input type="tel" id="tel" name="tel">
	    	<div class="button"><input type="submit" value="확인"></div>
	    </div>
	</form>
	    

	<jsp:include page="struct/footer.jsp"/>
</body>
</html>