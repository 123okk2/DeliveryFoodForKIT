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
	String resName=request.getParameter("resName");
	String menu=request.getParameter("menu");
	String title=request.getParameter("title");
	String author=request.getParameter("author");
	int score=Integer.parseInt(request.getParameter("score"));
	String describe=request.getParameter("describe"); //내용
	
	//추가 : DAO 사용하셈
	//위의 것들 가지고 쿼리문 돌려서 디비에서 해당 게시물 수정하셈
	
	out.println(resName);
	out.println(menu);
	out.println(title);
	out.println(author);
	out.println(score);
	out.println(describe);
	
	response.sendRedirect("../view/homepage.jsp");
%>
</body>
</html>