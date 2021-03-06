<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 자바스크립트 외부 라이브러리 연결(Ajax) -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript">

	var regular_id = /^[a-zA-Z0-9]{3,8}$/;
	var regular_zipcode = /^[0-9]{5}$/;
	
	//JQuery 초기화이벤트
	$(document).ready(function(){
		
		if("${vo.user_grade eq'관리자'}"=="true"){
		$("#grade_admin").attr("checked",true);
			
		
		}

	});
	
	function find_addr() {
		
		 new daum.Postcode({
		        oncomplete: function(data) {
		            // 검색됭 주소를 선택했을때
		            // data={"zonecode":"12345","address":"서울시 마포구 노고산동",....}
		            var zipcode = data.zonecode;
		            var addr = data.address;
		            
		            $("#zipcode").val(zipcode);
		            $("#addr").val(addr);
		        }
	 }).open();
		
	}
	
	//회원가입
	function send(f){
		
	
		var name = f.user_name.value.trim();
		var pwd = f.user_pwd.value.trim();
		var zipcode = f.user_zipcode.value.trim();
		var addr = f.user_addr.value.trim();
		
		//입력값 체크
		if(name==''){
			alert('이름을 입력하세요');
			f.name.value='';
			f.name.focus();
			return;
		}
		
		if(pwd==''){
			alert('비밀번호를 입력하세요');
			f.pwd.value='';
			f.pwd.focus();
			return;
		}
		
		if(regular_zipcode.test(zipcode)==false){
			alert('우편번호 5자리를 입력하세요');
			f.zipcode.value='';
			f.zipcode.focus();
			return;
		}
		
		if(addr==''){
			alert('주소를 입력하세요');
			f.addr.value='';
			f.addr.focus();
			return;
		}
		

		
		f.action="${ pageContext.request.contextPath }/user/modify.do"; // MemberInsertAction 
		f.submit(); //전송
	}


</script>




</head>
<body>
	<form>
		<input type="hidden" name="user_idx" value="${vo.user_idx}">
		<table border="1" align="center" width="500">
			<caption>;;;수정하기;;;</caption>
			<!-- 1번째줄 -->
			<tr>
				<th>이름</th>
				<td><input name='user_name' value="${vo.user_name}"></td>
			</tr>
			
			<!-- 2번째줄 -->
			<tr>
				<th>아이디</th>
				<td>
					<input name="user_id"value="${vo.user_id}" readonly="readonly">
				</td>
			</tr>
			
			<!-- 3번째줄 -->
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="user_pwd" value="${vo.user_pwd}"></td>
			</tr>
			
			<!-- 4번째줄 -->
			<tr>
				<th>우편번호</th>
				<td>
					<input name="user_zipcode" id="zipcode" value="${vo.user_zipcode}">
					<input type="button" value="주소찾기" onclick="find_addr();">
				</td>
			</tr>
			
			<!-- 5번째줄 -->
			<tr>
				<th>주소</th>
				<td><input style="width:99%;" name="user_addr" id="addr" value="${vo.user_addr}" ></td>
			</tr>
			
			<!-- 6번째줄 -->
			<tr>
				<th>닉네임</th>
				<td><input name="user_nickname" value="${vo.user_nickname}" ></td>
			</tr>
			
			<!-- 7번째줄 -->			
			<tr>
				<th>전화번호</th>
				<td><input name="user_tel" value="${vo.user_tel}"></td>
			</tr>
			
			<!-- 8번째줄 -->
			<tr>
				<th>이메일</th>
				<td><input name="user_email" value="${vo.user_email}"></td>
			</tr>
			
			<!-- 9번째줄 -->
			<tr>
				<th>회원구분</th>
				<td>
					<input type="radio" name="user_grade" value="일반" checked="checked">일반
					<input type="radio" name="user_grade" id = "grade_admin"value="관리자">관리자
				</td>
			</tr>
			
		
			<!-- 10번째줄 -->
			<tr>
				<td colspan="2" align="center">
					<input id="btn_reg" type="button" value="수정하기" onclick="send(this.form);" >
					<input type="button" value="취소하기" onclick="location.href='list.do'">
					<!-- location.href=''; 자신의 페이지로 이동 -->
				</td>
			</tr>
			
			
		</table>
	</form>
</body>
</html>