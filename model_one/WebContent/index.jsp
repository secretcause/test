<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ include file="/ssi/ssi.jsp" %>
<% 
	String id = (String)session.getAttribute("id");
	String grade = (String)session.getAttribute("grade");
%> 

<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title></title> 
<style type="text/css"> 
*{ 
  font-size: 24px; 
} 
</style> 
<link href="css/style.css" rel="stylesheet">
</head> 
<body leftmargin="0" topmargin="0">
<jsp:include page="./menu/top.jsp"/>

<DIV class="content">
	<img src="./images/람보르기니.png" width="60%">
	<br>
	<br>
	<% if(id==null){ %>
		<input type="button" value="로그인" class="button" onclick="location.href='member/loginForm.jsp'">
	<% } else{ %>
		<input type="button" value="로그아웃" class="button" onclick="location.href='member/logout.jsp'">
	<%   } %>
</DIV>
 
<jsp:include page="/menu/bottom.jsp"/>

</body>
 
</html> 