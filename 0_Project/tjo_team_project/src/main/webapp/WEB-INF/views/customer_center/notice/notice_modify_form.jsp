<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<form action="notice_update.do">
		<input type="hidden" name="selectPage" value="${ param.selectPage }" />
		<input type="hidden" name="page" value="${ param.page }" />
		<table class="table table-hover">
			<tr><td><input type="text" name="notice_idx" value="${ noticeVo.notice_idx }" readonly="readonly" /></td></tr>
			<tr><td><input type="text" name="notice_category" value="${ noticeVo.notice_category }" /></td></tr>
			<tr><td><input type="text" name="notice_title" value="${ noticeVo.notice_title }" /></td></tr>
			<tr><td><input type="text" name="notice_content" value="${ noticeVo.notice_content }" /></td></tr>
			<tr><td><input type="text" name="notice_author" value="${ noticeVo.notice_author }" readonly="readonly" /></td></tr>
			<tr><td><input type="button" value="수정" onclick="notice_update(this.form);"/></td></tr>
			<tr><td><input type="button" value="취소" onclick="location.href='${pageContext.request.contextPath}/customer_center/customer_center.do?selectPage=${ param.selectPage }&page=${ param.page }'" /></td></tr>
		</table>
	</form>
</body>
<script type="text/javascript">
	function notice_update(form) {
		// TODO ----------------- form data check ----------------
		// TODO ----------------- form data check ----------------
		form.submit();
	}
</script>
</html>