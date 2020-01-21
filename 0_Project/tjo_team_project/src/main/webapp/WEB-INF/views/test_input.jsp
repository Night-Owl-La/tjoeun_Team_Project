<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script type="text/javascript">
    
    function send(form) {
    	if(form.search_Value.value == ''){
    		alert('검색어를 입력하세요');
    		form.search_Value.value = '';
    		form.search_Value.focus();
    		return;
    	}
    	
    	form.submit();
	}
    
    function send_one(form) {
    	form.action = "test_one.do";
		form.submit();
	}
    
    </script>
</head>

<body>

    <div style="width:600; height: 600;">

        <form action="test.do">
            <select name="search_Key">
                <option value="keyword">검색선택</option>
                <option value="title">제목</option>
                <option value="nation">제작국가</option>
                <option value="company">제작사</option>
                <option value="genre">장르</option>
                <option value="director">감독</option>
                <option value="actor">배우</option>
            </select>

            <input type="text" name="search_Value">
            <input type="button" value="검색" onclick="send(this.form);">
            <input type="button" value="하나검색" onclick="send_one(this.form);" />
        </form>
    </div>

</body>

</html>
