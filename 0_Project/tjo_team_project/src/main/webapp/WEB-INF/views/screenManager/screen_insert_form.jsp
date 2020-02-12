<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
영화 고유등록 번호 : ${ API_Vo.DOCID }
<hr />
영화 제목 : ${ API_Vo.title }
<hr />
영화 제작년도 : ${ API_Vo.prodYear }
<hr />
영화 제작회사 : ${ API_Vo.company }
<hr />
영화 요약 : ${ API_Vo.plot }
<hr />
영화 런타임 : ${ API_Vo.runtime }
<hr />
영화 장르 : ${ API_Vo.genre }
<hr />
<hr />

<form action="${pageContext.request.contextPath}/screenManager/insert.do">
	<input type="hidden" name="DOCID" value="${ API_Vo.DOCID }" />
	<input type="hidden" name="screen_regdata_movietitle" value="${ API_Vo.title }" />
	영화관 : 
	<select name="theater_idx" id="select_theater"></select>
	<hr />
	상영관 :
	<select name="screen_idx" id="select_screen"></select>
	<hr />
	날짜
	<select name="screen_schedule_date" id="select_date"></select>
	<hr />
	시간
	<select name="screen_schedule_time" id="select_time"></select>
	<hr />
	<input type="submit" />
</form>

</body>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">

	$(function() {
		getTheaterList();
		
		$('#select_theater').change(function() {
			var selected_theater_idx = $('#select_theater option:selected').val();
			getScreenList_From_Theater(selected_theater_idx);
		});
		
		setScreenDate();
		setScreenTime();
	});
	
	function getTheaterList() {
		$.ajax({
			url : '${pageContext.request.contextPath}/theater/list.do',
			dataType : 'json',
			success : function(res_data) {
				
				var theaterList = res_data.theaterList;
				var theater_idx;
				var theater_name;
				
				for (var i = 0; i < theaterList.length; i++) {
					theater_idx = theaterList[i].theater_idx;
					theater_name = theaterList[i].theater_name;
					$('#select_theater').append("<option value='" + theater_idx + "'>" + theater_name + "</option>");
				}
				
			},
			error : function(error) { alert('getTheaterList() 에러! : '+error); }
		});
	}
	
	function getScreenList_From_Theater(theater_idx) {
		$('#select_screen option').remove();
		
		$.ajax({
			url : '${pageContext.request.contextPath}/screen/list_theater_idx.do',
			data : { "theater_idx" : theater_idx },
			dataType : 'json',
			success : function(res_data) {
				var screenList = res_data.screenList;
				var screen_idx;
				var screen_id;
				
				for (var i = 0; i < screenList.length; i++) {
					screen_idx = screenList[i].screen_idx;
					screen_id = screenList[i].screen_id;
					
					$('#select_screen').append("<option value='" + screen_idx + "'>" + screen_id + "관" + "</option>");
				}
			},
			error : function(error) { alert('getScreenList_From_Theater 에러! : '+error); }
		});
	}
	
	function setScreenDate() {
		$('#select_date option').remove();
		
		var today = new Date();
		var nowYear = today.getFullYear();
		var nowMonth = today.getMonth();
		var nowDate = parseInt(today.getDate());
		
		if(nowMonth<10) nowMonth = '0'+nowMonth;
		
		var fullDate = nowYear + "-" + nowMonth + "-";
		
		// 현재 날짜 +5까지 생성.
		for (var i = 0; i < 5; i++) {
			date = nowDate+i;
			var dateStr;
			
			if(date<10) dateStr = fullDate + ('0'+date)
			else dateStr = fullDate + date;
			
			$('#select_date').append("<option value='" + dateStr + "'>" + dateStr + "</option>");
		}
	}
	
	function setScreenTime() {
		$('#select_time option').remove();
		
		var timeTable = ["05:00", "10:00", "15:00", "20:00"];
		
		for (var i = 0; i < timeTable.length; i++) {
			$('#select_time').append("<option value='" + timeTable[i] + "'>" + timeTable[i] + "</option>");
		}
	}
	
</script>
</html>