<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.javaex.vo.UserVo"%>

<%
	UserVo authVo = (UserVo)session.getAttribute("authUser");
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="/mysite/assets/css/mysite.css" rel="stylesheet" type="text/css">
	<link href="/mysite/assets/css/user.css" rel="stylesheet" type="text/css">
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
				<li><a href="/mysite/user?action=loginform">로그인</a></li>
				<li><a href="/mysite/user?action=joinform">회원가입</a></li>
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
				<li><a href="/mysite/main">황일영</a></li>
				<li><a href="/mysite/guestbook?action=addlst">방명록</a></li>
				<li><a href="">게시판</a></li>
			</ul>
		</div><!-- /navigation -->
		
		<div id="content">
			<div id="c_box">
				<div id="user">
					<h2>회원가입성공</h2>
					
					<p class="form-box">
						회원가입을 축하합니다.
						<br><br>
						<a href="/mysite/user?action=loginform">로그인하기</a>
					</p>
					
				</div><!-- /user -->
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
