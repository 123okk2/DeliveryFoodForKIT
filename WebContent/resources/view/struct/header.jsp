<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
    <div class="header">
        <div class="brand"><img src="image/logo.png" usemap="#back" width="100px" align="center" > 금오공대 배달평점</div>
        <map name="back"><area shape="rect" coords="0,0,512,512" href="homepage.jsp"></map>
        <% 
        if(session.getAttribute("UserID")!=null) {
        %>
        <div class="membership" id="logout"><a href="../systemjsp/LogOut.jsp">로그아웃</a></div>
        <div class="login"><a><%=session.getAttribute("UserID") %> 님, 반갑습니다.</a></div>
        <script src="js/logout.js"></script>
        <%
        }
        else {
        %>
        <div class="membership" id="membership"><a href="membership.jsp">회원가입</a></div>
        <div class="login" id="login"><a href="login.jsp">로그인</a></div>
        <script src="js/header.js"></script>
        <%
        }
        %>
        
    </div>
</body>
</html>