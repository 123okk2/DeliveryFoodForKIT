<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DFK.resReview" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\register.css">
    <%
    String ID=request.getParameter("ID");
    String resName=request.getParameter("resName");
    //엔티티 클래스
    /*
    이제 여기다 저 아이디랑 레스토랑 이름 가지고 게시글 찾아오셈
    */
    resReview r=new resReview(1, "ohgang", "돼지찌개", "괜찮네요", "2019-06-04", 10, "맛있어요", 5);
    %>
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

	<div class="tables">
	    <form action="../systemjsp/updateReview.jsp?ID=<%=ID%>" method="post" class=input>
		    <table>
		        <thead>
		            <tr>
			            <th>가게 : </th>
			            <th><input type="text" value=<%=resName%> name="resName"></th>
		            </tr>
		            <tr>
		                <th>메뉴 : </th> 
		                <th> <input type="text" value=<%=r.getMenu() %>  name="menu"></th>
		            </tr>
		            <tr>
		                <th>제목 : </th> 
		                <th> <input type="text" value=<%=r.getTitle() %>  name="title"></th>
		            </tr>
		            <tr>
		                <th>작성자 : </th> 
		                <th> <input type="text" value=<%=r.getAuthor() %>  name="author"></th>
		            </tr>
		            <th>평점 : </th> 
		                <th> <input type="number" value=<%=r.getScore() %> name="score"></th>
		        </thead>
		    </table>
		
		    <input type="text" id="para" value=<%=r.getDescribe() %>  name="describe"> 
			<br>
			<div id="upd"><input type="submit" id="register" value="수정"></div>
			<script src="js/updAlarm.js"></script>
	    </form>
	    <br>
    </div>

	<jsp:include page="struct/footer.jsp"/>
</body>
</html>