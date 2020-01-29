<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<input type="button" value="회원관리"  />
<input type="button" value="영화등록" onclick="location.href='${ pageContext.request.contextPath }/movieManager/movieReg.do'" />

</body>
</html>