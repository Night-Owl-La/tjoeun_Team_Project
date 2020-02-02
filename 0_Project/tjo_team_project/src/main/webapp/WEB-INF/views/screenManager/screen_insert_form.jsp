<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
영화 고유등록 번호 : ${ API_vo.DOCID }
<hr />
영화 제목 : ${ API_vo.title }
<hr />
영화 제작년도 : ${ API_vo.prodYear }
<hr />
영화 제작회사 : ${ API_vo.company }
<hr />
영화 요약 : ${ API_vo.plot }
<hr />
영화 런타임 : ${ API_vo.runtime }
<hr />
영화 장르 : ${ API_vo.genre }
<hr />
<hr />

영화관
상영관
날짜
시간


</body>
</html>