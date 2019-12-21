<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\restaurants.css">
    <%
    double score_pizzabig=5.0;
    double score_bigstar=9.6;
    double score_pizzashop=7.5;
    //오갱아 이건 디비가 없어서 바로 할 수가 없어서 그런데, 미안하지만 디비에서 빼오면서 너가 좀 해줘.
    //그냥 디비에서 가게 별 점수들 전부 빼와서 평균점수 구하면 됨.
    //ㅇㅋ?
    %>
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

    <div class="container">
        <div class="navigation">
            <ul>
                <li><div id="pizzabig"><img src="image/pizzabig.jpg" alt="피자빅" width="120px" height="120px" align="center"> 피자빅</div></li>
                <br>
                <li><div id="bigstar"><img src="image/bigstar.png" alt="빅스타" width="120px" height="120px" align="center"> 빅스타피자</div></li>
                <br>
                <li><div id="pizzashop"><img src="image/pizzashop.png" alt="피자#" width="120px" height="120px" align="center"> 피자#</div></li>
                <script src="js/pizza.js"></script>
            </ul>
        </div>

        <div class="grade">　　평점
        	<ul>
	        	<li>
	        	<div>
	        	<%
	        	double i;
	        	for(i=1; i<score_pizzabig/2; i++) {
	        	%>
	        	★
	        	<%} 
	        	if(score_pizzabig-i>=1) {
	        	%>
	        	☆
	        	<%} %>
	        	</li>
	        	<br>
    	    	<li>
	        	<div>
				<%for(i=1; i<score_bigstar/2; i++) {
	        	%>
	        	★
	        	<%}
	        	if(score_bigstar-i>=1) {
	        	%>
	        	☆
	        	<%} %>
	        	</div>
	        	</li>
	        	<br>
        		<li>
	        	<div>
				<%for(i=1; i<score_pizzashop/2; i++) {
	        	%>
	        	★
	        	<%}
	        	if(score_pizzashop-i>=1) {
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