<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin: 0;}
	#main_box{
		width: 1000px;
		margin: auto;
	}
	
	table {
	width: 100%;
}

#main_box> h1{
	text-align: center;

}
</style>

<script type="text/javascript">

		function del(f) {
			//alert("삭제할  idx=" + idx);
			
			if(confirm("정말삭제하시겠습니까?")==false) return;
			
			//삭제(자바스크립트를 )
			location.href = "delete.do?user_idx=" + f.user_idx.value;
		}
		
		function modify(f) {
	
			//수정폼 띄우기
			location.href = "modify_form.do?user_idx=" + f.user_idx.value;
		}

</script>

</head>
<body>
	<div id="main_box" >
		<h2>;;;회원목록;;;</h2>
		<div style="text-align: right">				
		<!-- 로그인된 상태  -->
		<c:if test="${ not empty user}">
			${ user.user_name }님 환영합니다.
			<input type="button" value="로그아웃" onclick="location.href='logout.do?url=' + location.href;">
		</c:if>
		
		<!-- 로그인 안된 상태 -->
		<c:if test="${ empty user}">
			<input type="button" value="로그인" onclick="location.href='login_form.do'">	
		</c:if>
		
			<input type="button" value="회원가입" onclick="location.href='insert_form.do'">	
		</div>
		
		<table border="1">
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>ID</th>
				<th>비밀번호</th>
				<th>우편번호</th>
				<th>주소</th>
				<th>닉네임</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>아이피</th>
				<th>가입일자</th>
				<th>수정일자</th>
				<th>구분</th>
				<th>비고</th>
			</tr>
			
			
		<!-- Data가 없을 경우 -->
		<c:if test="${ empty list}">
			<tr>
				<td align="center" colspan="11">
					등록된 회원이 없습니다.
				</td>			
			</tr>
		</c:if>
	
		<!-- Data가 있을 경우 -->
		<!-- for(MemberVo member : list) -->
		<c:forEach var="user" items="${ list }">	
			<tr>
				<td>${ user.user_idx }</td>
				<td>${ user.user_name }</td>
				<td>${ user.user_id }</td>
				<td>${fn:substring(user.user_pwd,0,1)} *** </td>
				<td>${ user.user_zipcode }</td>
				<td>${ user.user_addr }</td>
				<td>${ user.user_nickname }</td>
				<td>${ user.user_tel }</td>
				<td>${ user.user_email }</td>
				<td>${ user.user_ip }</td>
				<td>${ fn:substring(user.user_regdate,0,10) }</td>
				<td>${ fn:substring(user.user_modifydate,0,10) }</td>
				<td>${ user.user_grade }</td>
				<td>
					<form> 
					<input type="hidden" name="user_idx" value="${ user.user_idx } ">
					<input type="button" value="수정" onclick="modify(this.form);">
					<input type="button" value="삭제" onclick="del(this.form);">
					</form> 
				</td>
			</tr>
		</c:forEach>	
		</table>
		
		

		
	
	</div>
</body>
</html>