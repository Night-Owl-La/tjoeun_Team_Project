<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css"
	href="resources/css/button_style.css">
	
	<script type="text/javascript">
	
	$(function() {
	      $('#seat_box li').click(function() {
	         $('#seat_box li').removeClass();
	         $(this).addClass('on');
	      })
	   });
	
	
	</script>

</head>
<body>

<div class="rows rows-mini">
                        <ul class="row" id="seat_box">
                           <li class="row_seat tooltip" data-tooltip="A1">A1</li>
                           <li class="row_seat tooltip" data-tooltip="A2">A2</li>
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

</body>
</html>