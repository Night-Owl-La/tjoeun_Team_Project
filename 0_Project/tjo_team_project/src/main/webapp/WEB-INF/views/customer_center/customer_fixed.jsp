<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8">
<title>공지사항 - 고객센터</title>

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- CSS 초기화 -->
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/w_init.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/common.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/notice.css">
<!-- 웹 폰트 -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:199,300,400,500,700,900&subset=korean">
</head>

<body>
	<div id="wrap">
		<!-- header -->
		<header id="header">
			<!-- <h1 hidden>공지사항</h1> -->
			<div class="inner_header">
				<!-- 네비게이션 바 -->
				<div id="navigation_Bar">
					<a href="#"><img
						src="${ pageContext.request.contextPath }/resources/images/customer_center_images/logo.png"
						alt="Logo"></a> <span>Navigation Bar</span>
					<nav>
						<ul class="clearfix">
							<li>목록</li>
							<li>1</li>
							<li>2</li>
							<li>3</li>
							<li>4</li>
						</ul>
					</nav>
				</div>
			</div>
		</header>

		<!-- nav -->
		<nav id="nav">
			<div class="title_menu_nav">
				<span class="text_title_menu_nav">Service</span>
			</div>
			<div class="menu_nav">
				<ul class="list_menu_nav">
					<li class="link_list_menu_nav"><a href="#"
						onclick="sendNotice('first');">Notice</a></li>
					<li class="link_list_menu_nav"><a href="#">FAQ</a></li>
					<!-- TODO 1:1문의 로그인 체크 -->
					<li class="link_list_menu_nav"><a href="#">1:1문의</a></li>
				</ul>
			</div>
		</nav>
		
		<div id=disp></div>

		<!-- footer -->
		<footer id="footer">
			<span class="text_footer">footer</span>
		</footer>
	</div>

</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script type="text/javascript">

function sendNotice(select) {
	
	// 첫 페이지 요청.
	if(select=='first'){
		location.href='${pageContext.request.contextPath}/customer_center/customer_center.do?selectPage=notice&page=1';
	}
	// 콘텐츠 새로고침 요청.
	else if(select=='refresh'){
		$.ajax({
			url: '${pageContext.request.contextPath}/notice/notice.do',
			data: { "page": '${ param.page}',
					"selectPage": '${ param.selectPage }',
					"search_option": '${ param.search_option}',
					"search_text": '${ param.search_text }'
			},
			success: function(res_data) {
				$('#disp').html(res_data);
			},
			error: function(error) {
				alert(error);
			}
		});
	}
}

function sendFAQ() {
	$.ajax({
		url: '${pageContext.request.contextPath}/customer_center/notice.do',
		success: function(res_data) {
			$('#disp').html(res_data);
		},
		error: function(error) {
			alert(error);
		}
	});
}


</script>
</html>