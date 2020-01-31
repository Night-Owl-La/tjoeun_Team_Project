<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">

.send_form {
	text-align: center;
}

</style>
<script type="text/javascript">

	function send(f) {
		
		var ml_title = f.ml_title.value.trim();
		
		f.action = "insert.do";
		f.submit();
		
	}

</script>
</head>
<body>
	<table class="table table-hover" width="90%">
		<tr>
			<th>No</th>
			<th>Title</th>
			<th>Poster</th>
			<th>Contents</th>
			<th>Director</th>
			<th>Actor</th>
			<th>Runtime</th>
			<th>Rating Grade</th>
			<th>Prod Year</th>
			<th>Company</th>
		</tr>
		<!-- 앞에서 선택한 영화의 정보들어오는 곳 -->
		<tr>
			<form action="insert.do" method="GET">
				<td>
					<input type="hidden" name="idx" value="${ user.idx }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_title }"/>
				</td>
				<td>
					<input type="image" src="${ user.ml_poster }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_plot }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_directorList }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_actorList }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_runtime }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_ratingGrade }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_prodYear }"/>
				</td>
				<td>
					<input type="text" value="${ user.ml_company }"/>
				</td>
			</form>
		</tr>
		
		<!-- 날짜 선택 칸 : 5일간의 스케줄 -->
		<table class="table table-hover" width="100%">
			<tr>
				<th colspan="5">날짜를 선택해 주세요</th>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="date" value="day1"/>
					<span>Today 29</span>
				</td>
				<td>
					<input type="checkbox" name="date" value="day2"/>
					<span>Tomorrow 30</span>
				</td>
				<td>
					<input type="checkbox" name="date" value="day3"/>
					<span>Friday 1</span>
				</td>
				<td>
					<input type="checkbox" name="date" value="day4"/>
					<span>Saturday 2</span>
				</td>
				<td>
					<input type="checkbox" name="date" value="day5"/>
					<span>Sunday 3</span>
				</td>
			</tr>
		</table>
		
		<!-- 극장 선택 칸 -->
		<table class="table table-hover" width="100%">
			<tr>
				<th colspan="5">극장을 선택해 주세요</th>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="location" value="gangnam"/>
					<span>CGV GANGNAM(20석)</span>
				</td>
				<td>
					<input type="checkbox" name="date" value="songpa"/>
					<span>CGV SONGPA(15석)</span>
				</td>
			</tr>
		</table>
		
		
		<!-- 시간 선택 칸 -->
		<table class="table table-hover" width="100%">
			<tr>
				<th colspan="5">상영시간을 선택해 주세요</th>
			</tr>
			<tr>
				<td>
					<input type="checkbox" name="time" value="09:00"/>
					<span>09:00</span>
				</td>
				<td>
					<input type="checkbox" name="time" value="11:00"/>
					<span>11:00</span>
				</td>
				<td>
					<input type="checkbox" name="time" value="15:00"/>
					<span>15:00</span>
				</td>
				<td>
					<input type="checkbox" name="time" value="19:00"/>
					<span>19:00</span>
				</td>
				<td>
					<input type="checkbox" name="time" value="22:00"/>
					<span>22:00</span>
				</td>
			</tr>
		</table>
		
		<!-- 가격 선택 칸 -->
		<table class="table table-hover" width="100%">
			<tr>
				<th colspan="5">가격을 선택해 주세요</th>
			</tr>
			<tr>
				<!-- <td>
					<input type="checkbox" name="price" value="8000"/>
					<span>8,000 WON</span>
				</td> -->
				<td>
					<input type="checkbox" name="time" value="10000"/>
					<span>10,000 WON</span>
				</td>
				<!-- <td>
					<input type="checkbox" name="time" value="12000"/>
					<span>12,000 WON</span>
				</td> -->
			</tr>
		</table>
		
		
	</table>
	<div class="send_form">
		<input type="button" value="등록" onclick="send(this.form);"/>
		<input type="button" value="취소" onclick="location.href='list.do'"/>
	</div>
</body>
</html>