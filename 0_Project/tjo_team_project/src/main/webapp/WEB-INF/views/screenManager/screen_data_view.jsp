<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--
		-- 전달된 VO --
		 
		 scrRegInfoVo
		 scrVo
		 scrTicketVo
		 theaterVo
		 scrSeatVo
	 -->
	 
	 영화명 : ${ scrRegInfoVo.scr_reg_title }
	 <br /><br /><hr />
	 상영관 번호 : ${ scrVo.scr_id }
	 <br /><br /><hr />
	 티켓 가격 : ${ scrTicketVo.scr_t_price }
	 <br /><br /><hr />
	 영화관 위치 : ${ theaterVo.tht_location }
	 <br /><br /><hr />
	 좌석 현황 :
	 	<c:forEach var="seat" items="${ scrSeatVo.seatMap }" varStatus="status">
	 		<c:if test="${ (status.index % 5) eq 0 }"><hr /></c:if>
	 		${ seat.key }
	 		<c:if test="${ seat.value eq 0 }">□</c:if>
	 		<c:if test="${ seat.value != 0 }">■</c:if>
	 		</c:forEach>
	 <hr />
	 <hr />
	 <hr />
	 
	 @영화관 목록. <br />
	 <c:forEach var="theater" items="${ theaterList }">
	 	${ theater.tht_name } <br />
	 </c:forEach>
	 <hr />
	 
</body>
</html>