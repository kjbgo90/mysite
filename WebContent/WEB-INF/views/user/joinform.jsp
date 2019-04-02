<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
				<!-- 로그인 전 -->
				<li><a href="">로그인</a></li>
				<li><a href="/mysite/user?action=joinform">회원가입</a></li>
				
				<!-- 로그인 후 -->
				<!-- 
				<li><a href="">회원정보수정</a></li>
				<li><a href="">로그아웃</a></li> 
				<li> 홍길동님 안녕하세요^^;</li>
				-->
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
				<div id="user">
					<h2>회원가입</h2>
					
					<form class="form-box"  method="post" action="/mysite/user" >
						<input type="hidden" name="action" value="join" >
						
						<div class="form-group">
							<label class="block-label" for="name">이름</label>
							<input id="name" type="text" name="name"  value="" >
						</div>
						
						<div class="form-group">
							<label class="block-label" for="email">이메일</label>
							<input id="email" type="text" name="email"  value="" >
							<input type="button" value="id 중복체크">
							<p><p>
						</div>
						
						<div class="form-group">
							<label class="block-label" for="password">패스워드</label>
							<input name="password" type="password" value="" >
						</div>
						
						<fieldset>
							<legend>성별</legend>
							<label for="rf">여</label> <input id="rf" type="radio" name="gender" value="female" checked="checked">
							<label for="rm">남</label> <input id="rm" type="radio" name="gender" value="male">
						</fieldset>
						
						<fieldset>
							<legend>약관동의</legend>
							<input id="agree-prov" type="checkbox" name="agreeProv" value="y">
							<label for="agree-prov">서비스 약관에 동의합니다.</label>
						</fieldset>
						
						<input type="submit" value="가입하기">
						
					</form>
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