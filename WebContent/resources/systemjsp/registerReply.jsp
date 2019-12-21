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
	
	String resName = request.getParameter("resName");
	int id = Integer.parseInt(request.getParameter("ID"));
	
	if(session.getAttribute("UserID").equals("")){
		int reviewID=Integer.parseInt(request.getParameter("reviewID"));
		String describe=request.getParameter("describe"); //내용
		
		//추가 : DAO 사용하셈
		//위의 것들 가지고 쿼리문 돌려서 디비에서 해당 게시물 삭제하셈
		
		out.println(reviewID);
		out.println(describe);
	}
	else {
		
	}
	response.sendRedirect("../view/post.jsp?ID="+id+"&resName="+resName);
	%>

</body>
</html>