<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록보기</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">

	function insert_form() {
		
		// LOGIN CHECK
		//if ("${empty user}"=="true") {
			
		//	if(confirm("글쓰기는 로그인하신후 사용가능합니다."
		//				+"\n로그인 하시겠습니까?")==false)return;
			
				// LOGIN FORM
		//		location.href = "../member/login_form.do";
		//		return;
				
		//	}
		
		location.href = "insert_form.do"
		
	}

</script>
</head>
<body>
	<!-- TITLE -->
	<table width="700px" align="center">
		<tr>
			<td>
			<input type="hidden" name="docid" value="${ param.docid }"/>
				Movie Select
				${ param.docid }
			</td>
		</tr>
	</table>
	<!-- LIST -->
	<table class="table table-hover" width="100%" >
		<tr>
			<th width="10%">No</th>
			<th width="10%">Title</th>
			<th width="10%">Poster</th>
			<th width="20%">Contents</th>
			<th width="10%">Director</th>
			<th width="10%">Actor</th>
			<th width="5%">Runtime</th>
			<th width="10%">Rating Grade</th>
			<th width="10%">Prod Year</th>
			<th width="5%">Company</th>
		</tr>
		<c:forEach var="vo" items="${ list }">
			<tr>
				<td>
					<input type="checkbox"/>
					${ vo.idx }
				</td>
				<td>${ vo.ml_title }</td>
				<td>
					<img src="${ vo.ml_poster }" alt="#" />
				</td>
				<!-- jpg파일 받아오면 어떻게 가져오는지 어디에 저장이 되거나 또는 어디에 이미지파일이 담겨져있는지? -->
				<td>${ vo.ml_plot }</td>
				<td>${ vo.ml_directorList }</td>
				<td>${ vo.ml_actorList }</td>
				<td>${ vo.ml_runtime }</td>
				<td>${ vo.ml_ratingGrade }</td>
				<td>${ fn:substring(vo.ml_prodYear, 0, 10) }</td>
				<td>${ vo.ml_company }</td>
			</tr>
		</c:forEach>
		<c:if test="${ empty list }">
			<tr>
				<td align="center">
					현재 등록된 글이 없습니다.
				</td>
			</tr>
		</c:if>
	</table>
	<input type="button" value="Next >>" onclick="insert_form();"/>
</body>
</html>