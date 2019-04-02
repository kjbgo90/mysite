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
	<link href="/mysite/assets/css/main.css" rel="stylesheet" type="text/css">
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
				<li><a href="">황일영</a></li>
				<li><a href="/mysite/guestbook?action=addlst">방명록</a></li>
				<li><a href="">게시판</a></li>
			</ul>
		</div><!-- /navigation -->
		
		<div id="content">
			<div id="c_box">
				<div id="main">
					<h2>Welcome</h2>
					
					<img id="profile" src="/mysite/assets/images/profile.png" width="150px">
					<p id="intro">
						안녕하세요.<br> 
						홍길동의 mysite에 방문하신 것을<br/> 환영합니다.
					</p>	
					
					<p>	
						이 사이트는 웹 프로그램밍 실습과제 예제 사이트입니다.<br>
						<br>
						메뉴는 사이트 소개, 방명록, 게시판이 있구요. JAVA 수업 + 데이터베이스 수업 + 웹프로그래밍 수업
						배운 거 있는거 없는 거 다 합쳐서 만들어 놓은 사이트 입니다.<br>
					</p>
					
					<div id="goGuestbook">
						<a  href="">방명록</a>에 글 남기기
					</div>
				</div><!-- /main -->
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