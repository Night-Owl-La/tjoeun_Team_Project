<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>booking_list</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/booking_list.css" />
<script type="text/javascript">

	function drawImage() {
		//Ajax 가져와서 
		var idx = $("#poster").val();
		
		$.ajax({
			url : 'booking_one.do',
			data : {'idx' : idx},
			dataType : 'json',
			success : function(res_data) {
				//{"idx":21,"user_idx":1,"ml_title":"백두산","ml_poster":"백두산.jpg",
				//"ml_plot":"대한민국 관측 역사상 최대 규모의 백두산 폭발 발생...","ml_directorList":"이해준",
				//"ml_actorList":"이병헌","ml_runtime":"2시간 10분","ml_ratingGrade":"12세 이상 관람가",
				//"ml_prodYear":"2019-12-19 00:00:00.0","ml_company":"CJ Entertainment"}
			
				$("#poster_image").attr("src","${pageContext.request.contextPath}/resources/upload/"+res_data.ml_poster);
				$("#txt_plot").html("Introduce");
				$("#poster_plot").html(res_data.ml_plot);
				$("#txt_directorList").html("DirectorList");
				$("#poster_directorList").html(res_data.ml_directorList);
				$("#txt_actorList").html("ActorList");
				$("#poster_actorList").html(res_data.ml_actorList);
				$("#txt_runtime").html("Runnig Time");
				$("#poster_runtime").html(res_data.ml_runtime);
				$("#txt_ratingGrade").html("Rating Grade");
				$("#poster_ratingGrade").html(res_data.ml_ratingGrade);
			}
		});
	}
	
</script>
</head>
<body onload="drawImage()">
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand/logo -->
		<a class="navbar-brand" href="http://www.cgv.co.kr/">
			<img src="${pageContext.request.contextPath}/resources/upload/h1_cgv_green.png" alt="logo" id="logo">
		</a>
		
		<!-- Toggler/collapsibe Button -->
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<!-- Links -->
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="#">MOVIE</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">TRAILER</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">OFFICIAL SITE</a>
				</li>
			</ul>
		</div>
	</nav>
	
	<!-- CONTENTS -->
	<div class="container-fluid">
		<div class="wrap">
			<div class="ticket_title">
				<span>GET TICKETS</span>
			</div>
			<div class="select_movie">
				<form>
					<select id="poster" name="posters" class="custom-select" onchange="drawImage()">
						<option selected value=''>Select Movie</option>
						
						<!-- DB에 넣은 영화목록이 생성 -->
						<c:forEach var="vo" items="${ list }">
							<option value="${ vo.idx }">
								${ vo.ml_title }
							</option>
						</c:forEach>
					</select>

					<!-- 포스터 이미지가 나타나는 곳 -->
					<div id="poster_outline">
						<a href="#" onclick="location.href='select.do?docid=midway001'" >
							<img id="poster_image" alt="">
						</a>
					</div>
					
					<!-- 영화 정보가 나타나는 곳 -->
					<div id="content_outline">
						<div id="poster_cnt">
							<div id="txt_plot" class="poster_txt one">
							</div>
							<div id="poster_plot" class="poster_txt two">
							</div>
							<div id="txt_directorList" class="poster_txt one">
							</div>
							<div id="poster_directorList" class="poster_txt two">
							</div>
							<div id="txt_actorList" class="poster_txt one">
							</div>
							<div id="poster_actorList" class="poster_txt two">
							</div>
							<div id="txt_runtime" class="poster_txt one">
							</div>
							<div id="poster_runtime" class="poster_txt two">
							</div>
							<div id="txt_ratingGrade" class="poster_txt one">
							</div>
							<div id="poster_ratingGrade" class="poster_txt two">
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>