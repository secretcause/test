<%@ page contentType="text/html; charset=UTF-8"%>

<%
	String root = request.getContextPath();
	String id = (String) session.getAttribute("id");
	String grade = (String) session.getAttribute("grade");
%>

<html>
<head>
<style type="text/css">
ul#menu li {
	display: inline;
	margin: 0 auto;
	background-color: #EAEAEA;
}

ul#menu li a {
	background-color: #EAEAEA;
	color: #000000;
	pading: 10px 20px;
	text-decoration: none;
	border-radius: 4px 4px 0 0;
}

ul#menu li a:hover {
	background-color: #fff000;
	color: #ffffff;
	font-weight: bold;
}

ul#menu li a:SELECTION {
	background-color: #fff000;
	color: #000000;
	font-weight: bold;
}

ul#menu li a:CHECKED {
	background-color: #fff000;
	color: #ffffff;
	font-weight: bold;
}

.table {
	width: 100%;
}

.table, .td {
	border-style: none;
	padding: 0px;
	background-color: #EAEAEA;
}

.img {
	width: 100%;
	height: 100%;
}

li#admin {
	float: right;
	padding-right: 30px
}
</style>
</head>
<body>
	<!-- 상단 메뉴 -->
	<div>
		<table class="table">
			<tr>
				<td class="td">
					<img src="<%=root%>/menu/images/윗쪽자동차.gif" class="img">
					<!-- main02번이였음 -->
				</td>
			</tr>

			<tr>
				<td class="td">
					<ul id="menu">
						<%
							if (id == null) {
						%>
						<li><a href="<%=root%>/member/loginForm.jsp">로그인</a></li>
						<li><a href="<%=root%>/member/agreement.jsp">회원가입</a></li>
						<%
							} else if(id != null && grade.equals("H")){
						%>
						<li><a href="<%=root%>/member/read.jsp">나의정보</a></li>
						<li><a href="<%=root%>/member/updateForm.jsp">회원수정</a></li>
						<li><a href="<%=root%>/member/deleteForm.jsp">회원탈퇴</a></li>
						<li><a href="<%=root%>/member/logout.jsp">로그아웃</a></li>
						<%
							}
						%>
						<li><a href="<%=root%>/bbs/list.jsp">자동차목록</a></li>
						<li><a href="<%=root%>/bbs/createForm.jsp">자동차등록</a></li>
						<li><a href="<%=root%>/imgbbs/list.jsp">이미지 목록</a></li>
						<li><a href="<%=root%>/imgbbs/createForm.jsp">이미지 생성</a></li>
						<%
							if (id != null && grade.equals("A")) {
						%>
						<li><a href="<%=root%>/member/logout.jsp">로그아웃</a></li>
						<li id="admin"><a href="<%=root%>/admin/list.jsp">회원목록</a></li>
						<%
							}
						%>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<!-- 상단 메뉴 끝 -->

	<!-- 내용 시작 -->
	<div style="width: 100%; padding-top: 10px;">