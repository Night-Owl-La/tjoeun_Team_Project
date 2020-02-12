<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>:::무비 에어리어에 오신걸 환영합니다:::</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main_style.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">


</head>
<body class="mom">
	<div class="dad">
		<!-- 네비게이션 시작 -->
		<section>
			<header class="nav"></header>
		</section>
		<!-- 네비게이션 끝 -->


		<!-- 비디오 시작 -->
		<section>
				<video class="video" autoplay="autoplay" muted="muted" loop="loop">
					<source src="${pageContext.request.contextPath}/resources/videos/TENET.mp4" type="video/mp4">
				</video>
		</section>
		<!-- 비디오 끝 -->

		<!-- 포스터 시작 -->
		<section>
			<div class="poster">
				<div class="L_side"></div>
				<div class="pic">
					<img src="${ movieVo.posterList.get(0) }" id="poster-big1" alt="포스터1"> <span
						class="pic-caption bottom-to-top">
						<h1 class="pic-title">${ movieVo.title }</h1>
						<p>
							${ movieVo.genre }<br>
						</p>
						
						<a class="poster-btn" href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=167613"
						target="_sub">예매하기</a>
					</span>
				</div>

				<div class="pic">
					<img src="${ movieVo1.posterList.get(0) }" id="poster-small1" alt="포스터2"> <span
						class="pic-caption bottom-to-top">
						<h1 class="pic-title">${ movieVo1.title }</h1>
						<p>
							${ movieVo1.genre }<br>
						</p>
						
						<a class="poster-btn" href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=17062"
						target="_sub">예매하기</a>
					</span>
				</div>

				<div class="pic">
					<img src="${ movieVo.posterList.get(0) }" id="poster-small2" alt="포스터3"> <span
						class="pic-caption bottom-to-top">
						<h1 class="pic-title">${ movieVo.title }</h1>
						<p>
							${ movieVo.genre }<br>
						
						</p> <a class="poster-btn" href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=11671"
						target="_sub">예매하기</a>
					</span>
				</div>

				<div class="R_side"></div>

				<div class="pic">
					<img src="${ movieVo.posterList.get(0) }" id="poster-small3" alt="포스터4"> <span
						class="pic-caption bottom-to-top">
						<h1 class="pic-title">${ movieVo.title }</h1>
						<p>
							${ movieVo.genre }<br>
						</p>
						
						<a class="poster-btn" href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=24452"
						target="_sub">예매하기</a>
					</span>
				</div>

				<div class="pic">
					<img src="${ movieVo.posterList.get(0) }" id="poster-small4" alt="포스터5">
					<span class="pic-caption bottom-to-top">
						<h1 class="pic-title">${ movieVo.title }</h1>
						<p>
							${ movieVo.genre }<br>
						</p>
						
						<a class="poster-btn" href="https://movie.naver.com/movie/bi/mi/basic.nhn?code=10962"
						target="_sub">예매하기</a>
					</span>
				</div>
			</div>
		</section>
		<!-- 포스터 끝 -->

		<!-- 트레일러 시작 -->
		<section>
			<div class="trailer">
				<div class="trailer-word">
					<h1>TeaserTrailer</h1>
				</div>
				<div class="trailer-videos">
					<div>
						<iframe class="trailer-float" id="trailer1"
							src="https://www.youtube.com/embed/eSLe4HuKuK0" frameborder="0"></iframe>
					</div>
					<div>
						<iframe class="trailer-float" id="trailer2"
							src="https://www.youtube.com/embed/FLzfXQSPBOg" frameborder="0"></iframe>
					</div>
					<div>
						<iframe class="trailer-float" id="trailer3"
							src="https://www.youtube.com/embed/sOpuEhyAq5U" frameborder="0"></iframe>
					</div>
					<div>
						<iframe class="trailer-float" id="trailer4"
							src="https://www.youtube.com/embed/m8e-FF8MsqU" frameborder="0"></iframe>
					</div>
				</div>
			</div>
		</section>
		<!-- 트레일러 끝 -->

		<!-- 리뷰 시작 -->
		<section class="review">
			<div id="blog-left">
				<div class="vertical-heading">
					<h2>
						Latest <br>From <strong>Blog</strong>Team
					</h2>
				</div>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab
					placeat dolorem.</p>
				<div id="blog-btn">
					<a class="btn btn-general btn-yellow" href="#"
						title="View all Posts" rol="button">View all Posts</a>
				</div>
			</div>


			<!--BLog Post 01-->
			<div class="blog-post">
				<h4>Your Post Title</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Voluptatum</p>
				<a href="#">Read More</a>
				<div class="post-meta">
					<p>
						<img src="${pageContext.request.contextPath}/resources/images/moviearea1.png" alt="author" class="img-circle">Daniel
						Watrous
					</p>
				</div>
				<div class="col-md-6">
					<p class="text-right">October 02, 2019</p>
				</div>
			</div>

			<!--BLog Post 02-->
			<div class="blog-post">
				<h4>Your Post Title</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Voluptatum</p>
				<a href="#">Read More</a>
				<div class="post-meta">
					<p>
						<img src="${pageContext.request.contextPath}/resources/images/moviearea1.png" alt="author" class="img-circle">John
						Watrous
					</p>
				</div>
				<div class="col-md-6">
					<p class="text-right">December 01, 2018</p>
				</div>
			</div>
		</section>
		<!-- 리뷰 끝 -->

		<!-- 구독 시작 -->
		<section>
			<div class="sub">
				<div class="sub-img">
					<div class="sub-content">
						<h1 class="sub-title">SUBSCRIBE NOW!</h1>
						<p class="sub-word">이메일 구독으로 스타에게 당신의 존재를 알리세요!</p>
						<div class="sub-btn-center">
							<a class="sub-btn"  type="button" target="_sub" onclick="location.href='sub.do'">구독하러가기!</a>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 구독 끝 -->

		<!-- 푸터 시작 -->
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
		<!-- 푸터 끝 -->
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
			
	<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
	
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
		
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>