<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.javaex.vo.UserVo"%>

<%
	UserVo authVo = (UserVo)session.getAttribute("authUser");
	String no = request.getParameter("no");

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
				<div id="guestbook" class="deleteform">
					<h2>방명록삭제</h2>
					
					<form class="form-box" method="post" action="/mysite/guestbook">
						<div class="form-group">
							<label class="block-label">비밀번호</label> 
							<input type="password" name="password" value="">
							<input type="hidden" name="action" value="delete" >
							<input type="hidden" name="no" value="<%= no%>">	
						</div>
						
						<input type="submit" value="확인">
					</form>
					<a href="/mysite/guestbook?action=addlst">방명록 리스트</a>
					
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