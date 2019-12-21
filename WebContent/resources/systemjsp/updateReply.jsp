<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String resName = request.getParameter("resName");					//레스토랑 이름
	int id = Integer.parseInt(request.getParameter("ID"));				//게시물 id
	int reviewID=Integer.parseInt(request.getParameter("reviewID"));	//댓글 id
	String describe = request.getParameter("describe");					//댓글 내용
	
	//id가지고 받은 내용 수정
	
	response.sendRedirect("../view/post.jsp?ID="+id+"&resName="+resName);
	%>
</body>
</html>