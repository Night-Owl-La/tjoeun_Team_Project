<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:::지금 구독하세요!:::</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/sub_style.css">

</head>
<body class="mom">
	<section>
		<header class="header">
			<h1 class="header_text">Become a fan!</h1>
		</header>
	</section>
	
	<section>
		<div class="content">
			<div class="side_left"></div>
			<div class="main">
				<div class="main_box">
					<form class="main_content">
						<div class="main_name">&nbsp;이름&nbsp;&nbsp;: <input type="text" name="name" value=""></div> 
						<div class="main_email">이메일: <input type="text" name="email" value=""></div>
						<br>
						<div class="main_btn_align">
							<a class="main_btn" onclick="location.href='main.do'" role="button" onclick="alert('구독성공!');">구독!</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	
	<section>
			<footer class="footer">
					<div class="footer_logo">
						<img id="logo" src="${pageContext.request.contextPath}/resources/images/moviearea1.png" alt="로고">
					</div>
					<div class="footer_content1">
						<p id="footer_word">
							본사: 서대문구 길동쓰 빌딩<br> Tel: 0000-0000 | E-mail: tj@naver.com<br>
							대표이사: 홍길동 | 개인정보보호책임자: 홍길동<br>
						</p>
					</div>
			</footer>
	</section>
</body>
</html>