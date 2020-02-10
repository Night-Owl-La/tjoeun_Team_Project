<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>

<table class="table table-bordered table-hover">
	<tr>
		<th>영화 국제등록코드</th>
		<th>영화 이름</th>
		<th>영화관 이름</th>
		<th>영화관 전화번호</th>
		<th>영화관 지역</th>
		<th>영화관 위치</th>
		<th>상영관 번호</th>
		<th>상영관 구분</th>
		<th>좌석 개수</th>
		<th>상영시작 날짜</th>
		<th>상영시작 시간</th>
	</tr>
	<c:forEach var="data" items="${ screen_FullData_List }">
		<tr>
			<td>${ data.DOCID }</td>
			<td>${ data.screen_regdata_movietitle }</td>
			<td>${ data.theater_name }</td>
			<td>${ data.theater_tel }</td>
			<td>${ data.theater_area }</td>
			<td>${ data.theater_location }</td>
			<td>${ data.screen_id }관</td>
			<td>${ data.screen_classification }D</td>
			<td>${ data.screen_seat_total_amount }</td>
			<td>${ data.screen_schedule_date }</td>
			<td>${ data.screen_schedule_time }</td>
		</tr>
	</c:forEach>
	
</table>

</body>
</html>