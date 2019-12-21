<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DFK.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\post.css">
    <%
	    String ID=request.getParameter("ID");
	    String resName=request.getParameter("resName");
	    
	    dao db=new dao();
	    
	    resReview r=db.getResReview(Integer.parseInt(ID), resName);
	    ArrayList<replyReview> al = db.getReplyList(1);
    %>
</head>

<body>
	<jsp:include page="struct/header.jsp"/>
	<jsp:include page="struct/bottom.jsp"/>

	<div class="tables">
	    <table>
	        <thead>
	            <tr>
		            <th>가게 : </th>
		            <th> <%=resName%></th>
	            </tr>
	            <tr>
	                <th>메뉴 : </th> 
	                <th> <%=r.getMenu() %></th>
	            </tr>
	            <tr>
	                <th>제목 : </th> 
	                <th> <%=r.getTitle() %></th>
	            </tr>
	            <tr>
	                <th>작성자 : </th> 
	                <th> <%=r.getAuthor() %></th>
	            </tr>
	            <tr>
	            <th>평점 : </th> 
	                <th> <%=r.getScore() %></th>
	            </tr>
	            <tr>
	            <th>추천수 : </th>
	            <th> <%=r.getGood() %>
	            </tr>
	        </thead>
	    </table>
	
	    <input type="text" id="para" value=<%=r.getDescribe() %> readonly> 
	    <br>
	    
	    <%
	    String userID="";
	    if(session.getAttribute("UserID")!=null) userID=session.getAttribute("UserID").toString();
	    if(userID.equals(r.getAuthor())) {
	    %>
	    <form method="post" action="../systemjsp/deleteReview.jsp?ID=<%=r.getID()%>&resName=<%=resName%>">
	    	<div id="del"><input type="submit" id="delete" value="삭제"></div>
	    	<script src="js/delAlarm.js"></script>
	    </form>
	    <form method="post" action="update.jsp?ID=<%=r.getID()%>&resName=<%=resName%>">
	    	<input type="submit" id="change" value="수정">  
	    </form>
	    <%
	    }
	    %> 
	    <br>
    </div>
    <div class="comments">
	    <table>
	        <tbody>
	        	<%
	        		for(int i=0;i<al.size();i++) {
	        			if(al.get(i).getReviewID()==r.getID()) {
	        	%>
	            <tr>
	                <td><%=al.get(i).getAuthor() %></td>
	                <td><%=al.get(i).getReply() %></td>
	                <td><%=al.get(i).getDate() %></td>
	                <td>
	                <%
	                	if(al.get(i).getAuthor().equals(session.getAttribute("UserID"))){
	                %>
	                <form method="post" action="updateReply.jsp?&reviewID=<%=r.getID()%>&resName=<%=resName%>&ID=<%=ID%>&replyID=<%=al.get(i).getID()%>"><input type="submit" id="cmUpdate" value="수정"></form>
	                <form method="post" action="../systemjsp/deleteReply.jsp?&reviewID=<%=r.getID()%>&resName=<%=resName%>&ID=<%=ID%>&replyID=<%=al.get(i).getID()%>"><input type="submit" id="cmDelete" value="삭제"></form>
	                <%} %>
	                </td>
	            </tr>
	            <%
	        			}
	        		}
	            %>
	        </tbody>
	    </table>
    </div>
    <div class="comment">
        <p><form method="post" action="../systemjsp/registerReply.jsp?&reviewID=<%=r.getID()%>&resName=<%=resName%>&ID=<%=ID%>"><input type="text" id="para2" name="describe"> <input type="submit" id="cmRegister" value="등록"></form></p>
    </div>

	<jsp:include page="struct/footer.jsp"/>
</body>
</html>