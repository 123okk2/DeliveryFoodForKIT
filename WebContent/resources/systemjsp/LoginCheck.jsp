<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String UserID=request.getParameter("IDs");
	String UserPW=request.getParameter("passwords");
	if(UserID==null) {
	%>
		<script>
			alert("아이디를 입력하세요.");
			location.href="../login.jsp";
		</script>
	<% 
	}
	if(UserPW==null) {
	%>
		<script>
			alert("비밀번호를 입력하세요.");
			location.href="../login.jsp";
		</script>
	<%
	}
	//db에서 아이디, 비번 빼와서 비교
	//if() {
		session.setAttribute("UserID", UserID);
		session.setAttribute("UserPW", UserPW);
		response.sendRedirect("../view/homepage.jsp");
	//}
	/*
	else {
		response.sendRedirect("login.jsp");
	}
	*/
	%>
</body>
</html>