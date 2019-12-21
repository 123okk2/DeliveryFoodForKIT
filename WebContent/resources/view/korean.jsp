<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\restaurants.css">
</head>
    <%
    double score_wadda=5.0;
    double score_pigpig=9.6;
    double score_hongdaegam=7.5;
    //오갱아 이건 디비가 없어서 바로 할 수가 없어서 그런데, 미안하지만 디비에서 빼오면서 너가 좀 해줘.
    //그냥 디비에서 가게 별 점수들 전부 빼와서 평균점수 구하면 됨.
    //ㅇㅋ?
    %>
<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

    <div class="container">
        <div class="navigation">
            <ul>
                <li><div id="wadda"><img src="image/wadda.jpg" alt="와따김치찜" width="120px" height="120px" align="center">  와따김치찜</div></li>
                <br>
                <li><div id="pigpig"><img src="image/pigpig.jpeg" alt="배달삼겹" width="120px" height="120px" align="center">  배달삼겹돼지되지</div></li>
                <br>
                <li><div id="hongdaegam"><img src="image/hongdaegam.png" alt="홍대감" width="120px" height="120px" align="center">  홍대감</div></li>
                <script src="js/korean.js"></script>
            </ul>
        </div>

        <div class="grade">　　평점
        	<ul>
	        	<li>
	        	<div>
	        	<%
	        	double i;
	        	for(i=1; i<score_wadda/2; i++) {
	        	%>
	        	★
	        	<%} 
	        	if(score_wadda-i>=1) {
	        	%>
	        	☆
	        	<%} %>
	        	</li>
	        	<br>
    	    	<li>
	        	<div>
				<%for(i=1; i<score_pigpig/2; i++) {
	        	%>
	        	★
	        	<%}
	        	if(score_pigpig-i>=0.5) {
	        	%>
	        	☆
	        	<%} %>
	        	</div>
	        	</li>
	        	<br>
        		<li>
	        	<div>
				<%for(i=1; i<score_hongdaegam/2; i++) {
	        	%>
	        	★
	        	<%}
	        	if(score_hongdaegam-i>=0.5) {
	        	%>
	        	☆
	        	<%} %>
	        	</div>
	        	</li>
        	</ul>
     	</div>
     	</div>
            
    </div>


	<jsp:include page="struct/footer.jsp"/>
</body>

</html>