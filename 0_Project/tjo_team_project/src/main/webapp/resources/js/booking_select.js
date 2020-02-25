/**
 * booking_select.jsp
 * 
 * setHTML 로 시작하는 함수는 Html tag를 동적 생성하는 함수를 의미한다.
 */

var list = new Array() //getScreenFullData(docid);

//page start
$(function() {
	var docid = new URLSearchParams(location.search).get('DOCID')
	getScreenFullData(docid)
	initNavDate()
	initNavDateClickEvent()
	//-------------- seat ------------------------
	testcase();
});

// ----------------------------------------------------------------------------------------

//영화 상영 정보 리스트 -> 전역변수 list 세팅.
function getScreenFullData(docid) {
	$.ajax({
		url : "../booking/selectJSONList.do",
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

// 날짜 초기화.
function initNavDate() {
	setHTML_nav_link_content(getNextThreeDays())
	
	function setHTML_nav_link_content(days){
		var tag_nav_item = '<li class="nav-item">'
			
		for (var i = 0; i < days.length; i++) {
			if (i == 0) // 제일 첫번째 아이템에 .active
				tag_nav_item += '<a class="nav-date nav-link active" data-toggle="tab" href="#">' + days[i] + '</a>'
			else
				tag_nav_item += '<a class="nav-date nav-link" data-toggle="tab" href="#">' + days[i] + '</a>'
			
			tag_nav_item += '</li>'
		}
		
		$('.nav').append(tag_nav_item)
	}
	
	function getNextThreeDays() {
		var days     = new Array();
		var today    = new Date();
		var nowYear  = today.getFullYear();
		var nowMonth = today.getMonth() + 1; // getMonth() 0부터 시작하므로 +1
		var nowDate  = parseInt(today.getDate());
		
		// 월이 한 자리면 두 자리로 변경
		if(nowMonth < 10) nowMonth = '0' + nowMonth;
		
		var fullDate = nowYear + "-" + nowMonth + "-";
		
		// 현재 날짜 +3까지 생성.
		for (var i = 0; i < 3; i++) {
			var dateStr;
			var date = nowDate + i;
			
			if(date < 10) dateStr = fullDate + ('0' + date)
			else dateStr = fullDate + date;
			
			days[i] = dateStr;
		}
		
		return days;
	}
	
}

// 날짜 click event 처리.
function initNavDateClickEvent() {
	$('.nav-date').click(function() {
		var screen_schedule_date = $(this).text()
		var selectedList = getSelectedList(screen_schedule_date, list)
		var filteredSelectedList = filteringSelectedList(getSelectedList(screen_schedule_date, list))
		
		setHTML_ID_home(filteredSelectedList, selectedList)
		
		function setHTML_ID_home(filteredSelectedList, selectedList) {
			$('#home').html('') // 영역 초기화.
			for (let filteredVo of filteredSelectedList) {
				setHTML_select_location(filteredVo)
				setHTML_time_wrap(selectedList, filteredVo)
			}
			
			function setHTML_select_location(filteredVo){
				var tag_theater_name = '<h3>' + filteredVo.theater_name + '</h3>'
				var tag_select_location = '<div class="select_location">'+ tag_theater_name +'</div>'
				
				$('#home').append(tag_select_location);
			}
			
			function setHTML_time_wrap(selectedList, filteredVo) {
				var tag_time_wrap = 
					'<div class="time_wrap">'
						+ '<ul class="time_btn_wrap _time_btn_wrap" id="time_box">'
				
				for (let vo of selectedList) {
					if(vo.theater_name == filteredVo.theater_name){
						var tag_screen_id = '<span value=' + vo.screen_id + '>' + vo.screen_id + '관 - ' + '</span>'
						var tag_screen_schedule_time = '<span>' + vo.screen_schedule_time + '</span>'
						
						var tag_time_btn = 
							'<li id="time_btn">' 
								+ tag_screen_id 
								+ tag_screen_schedule_time 
							+ '</li>'
						tag_time_wrap += tag_time_btn
					}
				}
				
				tag_time_wrap += 
							'</ul>' 
					+ '</div>' // .time_wrap
				
				$('#home').append(tag_time_wrap)
			}
		} // setHTML_ID_home.END
		
		function getSelectedList(screen_schedule_date, list) {
			var selectedList = new Array()
			var count = 0;
			
			for (let vo of list)
				if(vo.screen_schedule_date == screen_schedule_date) 
					selectedList[count++] = vo
			
			return selectedList
		}
		
		function filteringSelectedList(selectedList) {
			for (var i = 0; i < selectedList.length; i++)
				for (var j = i+1; j < selectedList.length; j++)
					if(selectedList[i].theater_name == selectedList[j].theater_name){
						selectedList.splice(j, 1)
						i -= (i != 0) ? 1 : 0
					}
			
			return selectedList
		}
		
	}) // $('.nav-date').click().END
}

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
	
	var showLogList = function() {
		for (var i = 0; i < list.length; i++) {
			console.log(list[i]);
		}
	}
}
	

// ----------------------------------------------------------------------
	