<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<form action="notice_insert.do">
		<input type="hidden" name="selectPage" value="${ param.selectPage }" />
		<input type="hidden" name="page" value="${ param.page }" />
		<table class="table table-hover">
			<tr>
				<th>카테고리</th>
				<td><input name="notice_category" type="text" /></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input name="notice_title" type="text" /></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="notice_content" id="" cols="30" rows="10"></textarea></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input name="notice_author" value="관리자" readonly="readonly"/></td>
			</tr>
			<tr>
				<td>	
					<input type="button" value="작성" onclick="notice_insert(this.form);"/>
					<input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/customer_center/customer_center.do?selectPage=${ param.selectPage }&page=${ param.page }'" />
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	function notice_insert(form) {
		// TODO ----------------- form data check ----------------
		// TODO ----------------- form data check ----------------
		form.submit();
	}
</script>
</html>