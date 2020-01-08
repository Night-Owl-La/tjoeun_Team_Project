<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
</head>
<body>
	<table class="table table-bordered table-hover">
		<tr>
			<th>영화제목</th>
			<th>제작년도</th>
			<th>감독</th>
			<th>배우</th>
			<th>상영시간</th>
			<th>스텝 이름</th>
			<th>스텝 역할</th>
			<th>스텝 배역</th>
			<th>기타역할</th>
		</tr>
		<c:forEach var="movie" items="${ list }">
			<tr>
				<td>${ movie.title }</td>
				<td>${ movie.prodYear }</td>
				<td>
					<c:forEach var="directorMap" items="${ movie.directorList }">
						<ul>
							<li>${ directorMap.directorNm }</li>
						</ul>
					</c:forEach>
				</td>
				<td>
					<c:forEach var="actorMap" items="${ movie.actorList }">
					<ul>
						<li>${ actorMap.actorNm }</li>
					</ul>
					</c:forEach>
				</td>
				<td>
					<c:forEach var="ratingMap" items="${ movie.ratingList }">
					<ul>
						<li>${ ratingMap.runtime }</li>
					</ul>
					</c:forEach>
				</td>
				
				<td>
					<c:forEach var="staffMap" items="${ movie.staffList }">
						<ul>
							<li>${ staffMap.staffNm }</li>
						</ul>
					</c:forEach>
				</td>
				
				<td>
					<c:forEach var="staffMap" items="${ movie.staffList }">
						<ul>
							<c:if test="${ not empty staffMap.RoleGroup }">
								<li>${ staffMap.RoleGroup }</li>
							</c:if>
							
							<c:if test="${ empty staffMap.RoleGroup }">
								-
							</c:if>
							
						</ul>
					</c:forEach>
				</td>
				
				<td>
					<c:forEach var="staffMap" items="${ movie.staffList }">
						<ul>
							<c:if test="${ not empty staffMap.staffRole}">
								<li>${ staffMap.staffRole }</li>
							</c:if>
							
							<c:if test="${ empty staffMap.staffRole}">
								-
							</c:if>
						</ul>
					</c:forEach>
				</td>
				
				<td>
					<c:forEach var="staffMap" items="${ movie.staffList }">
						<ul>
							<c:if test="${ not empty staffMap.staffEtc }">
								<li>${ staffMap.staffEtc }</li>
							</c:if>
							
							<c:if test="${ empty staffMap.staffEtc }">
								-
							</c:if>
						</ul>
					</c:forEach>
				</td>
				
					
					
					
			</tr>
		</c:forEach>
	</table>

</body>
</html>