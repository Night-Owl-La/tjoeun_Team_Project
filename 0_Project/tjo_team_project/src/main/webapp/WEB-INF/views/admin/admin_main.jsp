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
<input type="button" value="영화등록" onclick="location.href='${ pageContext.request.contextPath }/screenManager/search_form.do'" />
<input type="button" value="등록된 영화확인" onclick="location.href='${ pageContext.request.contextPath }/screenManager/screenRegdata_list.do'" />

</body>
</html>