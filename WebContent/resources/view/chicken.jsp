<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css\restaurants.css">
    
    <%
    double score_kyochon=5.0;
    double score_bhc=9.6;
    double score_bbq=7.5;
    //오갱아 이건 디비가 없어서 바로 할 수가 없어서 그런데, 미안하지만 디비에서 빼오면서 너가 좀 해줘.
    //그냥 디비에서 가게 별 점수들 전부 빼와서 평균점수 구하면 됨.
    //ㅇㅋ?
    //추가 : dao 사용해 싀파
    %>
    
</head>

<body>
		<jsp:include page="struct/header.jsp"/>
		<jsp:include page="struct/bottom.jsp"/>

    <div class="container">
        <div class="navigation">
            <ul>
                <li><div id="kyochon"> <img src="image/kyochon.PNG" alt="교촌"" width="120px" height="120px" align="center"> 교촌치킨</div></li>
                <br>
                <li><div id="bhc"><img src="image/bhc.PNG" alt="bhc" width="120px" height="120px" align="center"> BHC</div></li>
                <br>
                <li><div id="bbq"><img src="image/bbq.PNG" alt="bbq" width="120px" height="120px" align="center"> BBQ</div></li>
                <script src="js/chicken.js"></script>
            </ul>
        </div>

        <div class="grade">　　평점
        	<ul>
	        	<li>
	        	<div>
	        	<%
	        	double i;
	        	for(i=1; i<score_kyochon/2; i++) {
	        	%>
	        	★
	        	<%} 
	        	if(score_kyochon-i>=1) {
	        	%>
	        	☆
	        	<%} %>
	        	</li>
	        	<br>
    	    	<li>
	        	<div>
				<%for(i=1; i<score_bhc/2; i++) {
	        	%>
	        	★
	        	<%}
	        	if(score_bhc-i>=1) {
	        	%>
	        	☆
	        	<%} %>
	        	</div>
	        	</li>
	        	<br>
        		<li>
	        	<div>
				<%for(i=1; i<score_bbq/2; i++) {
	        	%>
	        	★
	        	<%}
	        	if(score_bbq-i>=1) {
	        	%>
	        	☆
	        	<%} %>
	        	</div>
	        	</li>
        	</ul>
     	</div>
     	</div>

	<jsp:include page="struct/footer.jsp"/>
</body>

</html>