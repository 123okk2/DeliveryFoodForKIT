<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\register.css">
    <%
    String resName=request.getParameter("resName");
    %>
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>
		
    <div class="tables">
	    <form action="../systemjsp/uploadReview.jsp" method="post" class=input>
			    <table>
			        <thead>
			            <tr>
			            <th>가게 : </th>
			            <th><input type="text" value=<%=resName%> readonly name="resName"></th>
			            </tr>
			            <tr>
			                <th>메뉴 : </th> 
			                <th> <input type="text" name="menu"></th>
			            </tr>
			            <tr>
			                <th>제목 : </th> 
			                <th> <input type="text" name="title"></th>
			            </tr>
			            <tr>
			                <th>작성자 : </th> 
			                <th> <input type="text" value=<%=session.getAttribute("UserID")%> readonly name="author"></th>
			            </tr>
			            <th>평점 : </th> 
			                <th> <input type="number" name="score"></th>
			        </thead>
			    </table>
			
			    <input type="text" id="para" name="describe">
			    <br>
			    <div id="reg"><input type="submit" id="register" value="등록"></div>
			    <script src="js/regAlarm.js"></script>
	    </form>
    </div>

	<jsp:include page="struct/footer.jsp"/>
</body>

</html>