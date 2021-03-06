<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>booking_select</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/booking_select.css" />
<script type="text/javascript">

	/* 날짜 선택 */
	$(function() {
		$('#time_box li').click(function() {
			$('#time_box li').removeClass();
			$(this).addClass('on');
		})
	});
	
	/* 좌석 선택 */
	$(function() {
		$('#seat_box li').click(function() {
			$('#seat_box li').removeClass();
			$(this).addClass('on');
			
		})
	});
	
	
	$(function() {
		$('#')
	});
	
	/* Ticket Buy로 정보 넘기기 */
	function send(f) {
		var date     = f.date.value.trim();
		var location = f.location.value.trim();
		var time 	 = f.time.value.trim();
		
		if (date == '') {
			alert('Select Date');
			return;
		}
		
		f.action = "buy.do";
		f.submit();
	}
</script>
</head>
<body>
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
	<div class="container mt-3">
	<form method="GET">
		<h2>Toggleable Tabs</h2>
		<br>
		<!-- Nav tabs -->
		<!-- for(BookingVo vo : list) -->
		<ul class="nav nav-tabs">
			<li class="nav-item">
				<!-- <a class="nav-link active" data-toggle="tab" href="#home">TODAY 8</a> -->
				<a class="nav-link active" data-toggle="tab" href="#home">${ vo.bk_select_date }</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#menu1">TOMORROW 9</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#menu2">FRIDAY 10</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#menu3">SATURDAY 11</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#menu4">SUNDAY 12</a>
			</li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<!-- 5개의 날짜에 대한 예매 진행 -->
			<div id="home" class="container tab-pane active">
				<div class="select_location">
					<h3>${ vo.bk_select_location }</h3>
					<!-- <h3>CGV GANGNAM</h3> -->
				</div>
				
				<!-- 시간 선택 -->
				<div class="time_wrap">				
					<ul class="time_btn_wrap" id="time_box">
						<li id="time_btn">${ vo.bk_select_time }</li>
						<span>10 / </span>
						<span>20</span>
					</ul>
					<ul class="time_btn_wrap" id="time_box">
						<li id="time_btn">${ vo.bk_select_time }</li>
						<span>8 / </span>
						<span>20</span>
					</ul>
					<ul class="time_btn_wrap" id="time_box">
						<li id="time_btn">${ vo.bk_select_time }</li>
						<span>3 / </span>
						<span>20</span>
					</ul>
				</div>
			</div>
			
			<div id="menu1" class="container tab-pane fade">
			</div>
			
			<div id="menu2" class="container tab-pane fade">
			</div>
			<c:if test="${empty list}">
				<div id="menu3" class="container tab-pane fade">
					<div class="menu_notice">
						<span>No Films Available</span>
					</div>
				</div>
			</c:if>
			<div id="menu4" class="container tab-pane fade">
			</div>
		</div>
		
		<!-- 인원수 선택 START -->
		<div class="form-group">
			<label for="sel1">Qty</label>
     		<select class="form-control" id="sel1" name="sellist1">
		        <option>1</option>
		        <option>2</option>
		        <option>3</option>
		        <option>4</option>
			</select>
			<!-- <button type="submit" id="btn_sub" class="btn btn-primary">Submit</button> -->
		</div>
		<!-- 인원수 선택 END -->
		
		<!-- MODAL -->
		<div id="btn_wrap">
			<button type="button" class="btn" data-toggle="modal" data-target="#myModal">
				<!-- SUBMIT BUTTON -->
				<div class="submit_btn">
					<a href="#" id="a_btn">
						<span></span>
						<span></span>
						<span></span>
						<span></span>
						CHOOSE SEATS
					</a>
				</div>
		  	</button>
		</div>
	  	
	  	<!-- Modal -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h3 class="modal-title">Please select your seats</h3>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="plan">
							<div class="rows rows-mini">
								<!-- 예약 완료된 좌석은 0(색상 변경 및 클릭 블락), 가능한 좌석은 1 -->
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip" data-tooltip="A1"
										value="a1">A1</li>
									<li class="row_seat tooltip" data-tooltip="A2"
										value="a2">A2</li>
									<li class="row_seat tooltip" data-tooltip="A3">A3</li>
									<li class="row_seat tooltip" data-tooltip="A4">A4</li>
									<li class="row_seat tooltip" data-tooltip="A5">A5</li>
								</ul>
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip" data-tooltip="B1">B1</li>
									<li class="row_seat tooltip" data-tooltip="B2">B2</li>
									<li class="row_seat tooltip" data-tooltip="B3">B3</li>
									<li class="row_seat tooltip" data-tooltip="B4">B4</li>
									<li class="row_seat tooltip" data-tooltip="B5">B5</li>
								</ul>
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip" data-tooltip="C1">C1</li>
									<li class="row_seat tooltip" data-tooltip="C2">C2</li>
									<li class="row_seat tooltip" data-tooltip="C3">C3</li>
									<li class="row_seat tooltip" data-tooltip="C4">C4</li>
									<li class="row_seat tooltip" data-tooltip="C5">C5</li>
								</ul>
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip" data-tooltip="D1">D1</li>
									<li class="row_seat tooltip" data-tooltip="D2">D2</li>
									<li class="row_seat tooltip" data-tooltip="D3">D3</li>
									<li class="row_seat tooltip" data-tooltip="D4">D4</li>
									<li class="row_seat tooltip" data-tooltip="D5">D5</li>
								</ul>
							</div>
							<!-- /rows -->
							<ul class="legend">
								<li class="legend_item legend_item-free">Free</li>
								<li class="legend_item legend_item-reserved">Reserved</li>
								<li class="legend_item legend_item-selected">Selected</li>
							</ul>	
						</div>
						<!-- /plan -->
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<div class="action">
							<button class="action-buy"
								onclick="send(this.form);">Buy tickets</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
	</div>
	<div class="footer">
		<div class="ft_cnt">footer</div>
	</div>
</body>
</html>
