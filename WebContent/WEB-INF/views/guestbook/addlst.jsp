<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.javaex.vo.GuestBookVo"%>
<%@page import="com.javaex.vo.UserVo"%>

<%
	UserVo authVo = (UserVo)session.getAttribute("authUser");
	List<GuestBookVo> list = (List<GuestBookVo>)request.getAttribute("guestList");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="/mysite/assets/css/mysite.css" rel="stylesheet" type="text/css">
	<link href="/mysite/assets/css/guestbook.css" rel="stylesheet" type="text/css">
	<title>Mysite</title>
</head>
<body>
	<div id="container">
		<div id="header">
			<h1>MySite</h1>
			<ul>
				<%
					if(authVo == null){
				%>
				<!-- 로그인 전 -->
				<li><a href="">로그인</a></li>
				<li><a href="">회원가입</a></li>
				<%	
					} else {
				%>
				<!-- 로그인 후 -->
				 
				<li><a href="/mysite/user?action=modifyform">회원정보수정</a></li>
				<li><a href="/mysite/user?action=logout">로그아웃</a></li> 
				<li> <%= authVo.getName() %>님 안녕하세요^^;</li>
				<%
					}
				%>
			</ul>
		</div><!-- /header -->
	
		<div id="navigation">
			<ul>
				<li><a href="">황일영</a></li>
				<li><a href="">방명록</a></li>
				<li><a href="">게시판</a></li>
			</ul>
		</div><!-- /navigation -->
		
		<div id="content">
			<div id="c_box">
				<div id="guestbook">
					<h2>방명록</h2>
					
					<form id="addform" action="/mysite/guestbook" method="post">
						<input type="hidden" name="action" value="insert" >
						<table>
							<tr>
								<td>이름</td>
								<td><input type="text" name="name"></td>
								<td>비밀번호</td>
								<td><input type="password" name="pass"></td>
							</tr>
							<tr>
								<td colspan=4><textarea name="content" cols="75" rows="8"></textarea></td>
							</tr>
							<tr>
								<td colspan=4 align=right><input type="submit" VALUE=" 확인 "></td>
							</tr>
						</table>
					</form>
					<% for(GuestBookVo vo : list) {%>
					<table width=510 border=1>
						<tr>
							<td>[<%= vo.getNo() %>]</td>
							<td><%= vo.getName() %></td>
							<td><%= vo.getReg_date() %></td>
							<td><a href="./guestbook?action=deleteform&no=<%= vo.getNo() %>">삭제</a></td>
						</tr>
						<tr>
							<td colspan="4"><%= vo.getContent() %></td>
						</tr>
					</table>
		    		<br>
		    		<%} %>
				</div><!-- /guestbook -->
			</div><!-- /c_box -->
		</div><!-- /content -->
			
			
			
		<div id="footer">
			<div id="copyright">
				All contents Copyright 2019 BitClass Inc. all rights reserved<br>
				Contact mail: aaa@gmail.com Tel: 010-123-4567
			</div>
		</div><!-- /footer -->
	</div><!-- /container -->
</body>
</html>

