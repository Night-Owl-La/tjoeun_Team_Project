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

	var list; //getScreenFullData(docid);

	//first start
	$(function() {
		var docid = '${ param.DOCID }'
		setNavLinkContent(getNextThreeDays());
		getScreenFullData(docid);
		// -------------------------------------
		// click event 처리.
		$('.nav-date').click(function() {
			var screen_schedule_date = $(this).text();
			//var selectedList = getSelectedList(screen_schedule_date); TODO 수정할것
			//var filteredSelectedList = filteringSelectedList(selectedList); TODO 수정할것
			
			//console.log(selectedList);
			//console.log(filteredSelectedList);
			
			/* TODO 수정할것
			for (var i = 0; i < filteredSelectedList.length; i++) {
				var vo = filteredSelectedList[i];
				console.log(vo);
			}
			*/
			
			/* TODO 수정할것
			$('.select_location').html('');
			for (var i = 0; i < filteredSelectedList.length; i++) {
				var vo = filteredSelectedList[i];
				var theater_name = '<h3>' + vo.theater_name + '</h3>'
				var select_location = '<div class="select_location">'+ theater_name +'</div>'
				
				$('#home').append(select_location);
			}
			*/
		});
		
		//-------------- seat ------------------------
		testcase();
	});

	// ------seat-----------
	function testcase() {
		var list = new Array();
		var count = 0;
		
		$('._seat').click(function() {
			var selectedSeat = $(this).attr('data-tooltip'); // 선택된 좌석 이름을 가져온다.
			
			// 첫번쨰로 값이 들어가면 
			if(list.length==0){
				list[count++] = selectedSeat;
				alert('first set : ' + list[0]);
				showLogList();
				alert(list.length);
				return;
			}
			
			// 중복체크
			for (var i = 0; i < list.length; i++) {
				if(list[i]==selectedSeat){
					list.splice(i,1);
					alert("del : " + selectedSeat);
					count--;
					showLogList();
					alert(list.length);
					return;
				}
			}
			
			//값 세팅
			list[count++]=selectedSeat;
			alert(selectedSeat);
			
			showLogList();
			alert(list.length);
		});
		
		// 1급함수(1레벨함수)는 변수로 저장하면 함수의 주소값이 저장되므로 다른 함수에 매개변수에 넣을수 있게 된다.
		var showLogList = function() {
			for (var i = 0; i < list.length; i++) {
				console.log(list[i]);
			}
		}
	}
	
	// ---------------------
	
	function filteringSelectedList(selectedList) {
		var temp = selectedList;
		
		for (var i = 0; i < temp.length; i++) {
			for (var j = 0; j < temp.length; j++) {
				if(temp[i]==temp[j]){
					temp.splice(j, 1);
					i-=1;
				}
			}
		}
		return temp;
	}
	
	function getSelectedList(screen_schedule_date) {
		var selectedList = new Array();
		var count = 0;
		
		for (var i = 0; i < list.length; i++) {
			var vo = list[i];
			if(vo.screen_schedule_date == screen_schedule_date){
				selectedList[count++] = vo;
			}
		}
		return selectedList;
	}
	
	function getScreenFullData(docid) {
		$.ajax({
			url : "${pageContext.request.contextPath}/booking/selectJSONList.do",
			data : {'DOCID' : docid},
			dataType : 'json',
			success : function(res_data){
				list = res_data.list;
			},
			error: function(error) {
				list = null;
			}
		});
	}
	
	function setNavLinkContent(days) {
		for (var i = 0; i < days.length; i++) {
			if (i == 0) {
				$('.nav').append('<li class="nav-item">' +
						'<a class="nav-date nav-link active" data-toggle="tab" href="#">'
						+ days[i] + '</a></li>');
			} else {
				$('.nav').append('<li class="nav-item">'+
						'<a class="nav-date nav-link" data-toggle="tab" href="#">'
						+ days[i] + '</a></li>');
			}
		}
	}
	
	function getNextThreeDays() {
		var days     = new Array();
		var today    = new Date();
		var nowYear  = today.getFullYear();
		var nowMonth = today.getMonth() + 1; // 0부터 시작하기 때문에 1을 더해준다
		var nowDate  = parseInt(today.getDate());
		
		// 월이 한 자리수면 두 자리수로 변경
		if(nowMonth < 10) nowMonth = '0' + nowMonth;
		
		var fullDate = nowYear + "-" + nowMonth + "-";
		
		// 현재 날짜 +3까지 생성.
		for (var i = 0; i < 3; i++) {
			date = nowDate + i;
			var dateStr;
			
			if(date < 10) dateStr = fullDate + ('0' + date)
			else dateStr = fullDate + date;
			
			days[i] = dateStr;
		}
		
		return days;
	}
	

// ----------------------------------------------------------------------
	

	/* 날짜 선택 */
	$(function() {
		$('#time_box li').click(function() {
			$('#time_box li').toggleClass('on');
		})
	});
	
	/* 좌석 선택 */
	$(function() {
		$('#seat_box li').click(function() {
			$('#seat_box li').removeClass();
			$(this).addClass('on');
			
		})
	});

	
	/*
	function selectSeats(seats) {
		
		var availableSeat = seats.val()
		
		console.log(availableSeat);
		
		$('#seat_box>li').on("click", function() {
			
		})
		*/
				
		/* if (availableSeat==$('#seat_box>li.on').length) {
			$('#seat_box>li').off('click');
		} else {
			$('#seat_box>li').removeAttr('disabled');
		}
		
		$(availableSeat).change(function name() {
			$('#seat_box>li').removeAttr('on');	
			$('#seat_box>li').removeAttr('disabled');	
		}); 
		
		
	}
	*/
	/*
	function seats() {
		
		var seats = $("#sel1").val();
				
		return seats;
	}
	
	*/
	
	/*
	// Ticket Buy로 정보 넘기기 
	function send(f) {
		var date     = f.date.value.trim();
		var location = f.location.value.trim();
		var time 	 = f.time.value.trim();
		
		if (date == '') {
			alert('Select Date');
			return;
		}
		
		f.action = "ticket_buy.do";
		f.submit();
	}
	*/
	
	//#seat_box>li.on
	
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
	<!-- hidden type text id=1 선택 총개수 value="" -->
	<!-- hidden type checkbox id=1 선택 총개수 value="" -->
		<h2>Toggleable Tabs</h2>
		<br>
		<!-- Nav tabs -->
		<!-- for(BookingVo vo : list) -->
		<ul class="nav nav-tabs"></ul>
		
		
		<%-- <ul class="nav nav-tabs">
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
		</ul> --%>

		<!-- Tab panes -->
		<div class="tab-content">
			<!-- 5개의 날짜에 대한 예매 진행 -->
			<div id="home" class="container tab-pane active">
				<!-- 시간 선택 -->
				<div class="time_wrap">
					<ul class="time_btn_wrap" id="time_box">
						<li id="time_btn">${ screen_FullDataVo.screen_schedule_time }</li>
					</ul>
				</div>
			</div>
			
			<c:if test="${empty list}">
				<div id="menu3" class="container tab-pane fade">
					<div class="menu_notice">
						<span>No Films Available</span>
					</div>
				</div>
			</c:if>
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
		
		<!-- 좌석선택 MODAL창 버튼 -->
		<div id="btn_wrap">
			<button type="button" class="btn" id="btn_seat" data-toggle="modal"
				 data-target="#myModal" onclick="seats();">
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
									<li class="row_seat tooltip _seat" data-tooltip="A1">A1</li>
									<li class="row_seat tooltip _seat" data-tooltip="A2">A2</li>
									<li class="row_seat tooltip _seat" data-tooltip="A3">A3</li>
									<li class="row_seat tooltip _seat" data-tooltip="A4">A4</li>
									<li class="row_seat tooltip _seat" data-tooltip="A5">A5</li>
								</ul>
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip _seat" data-tooltip="B1">B1</li>
									<li class="row_seat tooltip _seat" data-tooltip="B2">B2</li>
									<li class="row_seat tooltip _seat" data-tooltip="B3">B3</li>
									<li class="row_seat tooltip _seat" data-tooltip="B4">B4</li>
									<li class="row_seat tooltip _seat" data-tooltip="B5">B5</li>
								</ul>
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip _seat" data-tooltip="C1">C1</li>
									<li class="row_seat tooltip _seat" data-tooltip="C2">C2</li>
									<li class="row_seat tooltip _seat" data-tooltip="C3">C3</li>
									<li class="row_seat tooltip _seat" data-tooltip="C4">C4</li>
									<li class="row_seat tooltip _seat" data-tooltip="C5">C5</li>
								</ul>
								<ul class="row" id="seat_box">
									<li class="row_seat tooltip _seat" data-tooltip="D1">D1</li>
									<li class="row_seat tooltip _seat" data-tooltip="D2">D2</li>
									<li class="row_seat tooltip _seat" data-tooltip="D3">D3</li>
									<li class="row_seat tooltip _seat" data-tooltip="D4">D4</li>
									<li class="row_seat tooltip _seat" data-tooltip="D5">D5</li>
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
