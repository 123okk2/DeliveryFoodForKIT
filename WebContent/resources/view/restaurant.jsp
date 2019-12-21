<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "DFK.*" %>
<%@ page import = "java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta content="text/html; UTF-8" http-equiv="Content-Type">
    <link rel="stylesheet" href="css\restaurant.css">
    <%
    String resName=request.getParameter("resName"); //이게 가게 이름
    String search=request.getParameter("search");
	//저 search의 값이 null이냐, 아니냐에 따라 불러오는 게 달라야 함
	ArrayList<resReview> shops=new ArrayList<>();
	
    dao db=new dao();
	if(search.equals("")) shops=db.getList(resName);
	else shops=db.getList(resName, search);
	
    /*
	디비 이용해서 shops에 다 넣으세여
    */
    
    //예제용
    
    %>
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

    <table>
        <thead>
            <tr>
                <th>메뉴</th>
                <th>제목</th>
                <th>날짜</th>
                <th>평점</th>
            </tr>
        </thead>
        <tbody>
        <%
        for(int i=0;i<shops.size();i++) {
        %>
            <tr>
                <td><a href="post.jsp?ID=<%=shops.get(i).getID()%>&resName=<%=resName%>" style="text-decoration: none; color: black;"><%=shops.get(i).getMenu() %></td>
                <td><a href="post.jsp?ID=<%=shops.get(i).getID()%>&resName=<%=resName%>" style="text-decoration: none; color: black;"><%=shops.get(i).getTitle() %></a></td>
                <td><a href="post.jsp?ID=<%=shops.get(i).getID()%>&resName=<%=resName%>" style="text-decoration: none; color: black;"><%=shops.get(i).getDate() %></td>
                <td><a href="post.jsp?ID=<%=shops.get(i).getID()%>&resName=<%=resName%>" style="text-decoration: none; color: black;"><%=shops.get(i).getScore() %></td>
           </tr>
        <%} %>
        </tbody>
    </table>
    <form action="../systemjsp/searchReview.jsp?resName=<%=resName %>" method="post" class="input">
        <input type="text" id="search" name="search">
        <input type="submit" id="schbtn" value="검색">
    </form>
        <% 
        if(session.getAttribute("UserID")!=null) {
        %>
        <a href="register.jsp?resName=<%=resName%>"><input type="submit" id="register" value="등록" name="reg"></a>
        <%
        }
        %>

	<jsp:include page="struct/footer.jsp"/>
</body>
</html>