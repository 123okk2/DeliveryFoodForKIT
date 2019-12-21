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
String ID=request.getParameter("ID");
int ids=Integer.parseInt(ID);
String resName=request.getParameter("resName");
//위의 세개 가지고 쿼리문 돌려서 디비에서 해당 게시물 삭제하셈
if(true) {
	//이거 삭제 성공인데 성공 했으면 호출해줘. true에 조건 넣으면 됨.
%>
	<script>
		alert("삭제 성공!");
	</script>
<%
}
%>

<%
response.sendRedirect("../view/homepage.jsp");
%>
</body>
</html>