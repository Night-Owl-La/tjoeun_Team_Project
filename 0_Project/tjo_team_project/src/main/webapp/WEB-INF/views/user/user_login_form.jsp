<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS 초기화 -->
<link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/login_form.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="crossorigin="anonymous"></script> 
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
 


<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v5.0"></script>

<!-- 카카오톡 API -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<script type="text/javascript">


	//현재html이 로드가 완료되면
	window.onload = function(){
		setTimeout(init, 100) 
	};

	function init() {
		//alert('로드완료');
		// login_form.do?reason=fail_id
		if("${param.reason eq 'fail_id'}"=="true"){
			alert('아이디가 틀립니다');	
		}
		// login_form.do?reason=fail_pwd
		if("${param.reason eq 'fail_pwd'}"=="true"){
			alert('비밀번호가 틀립니다');	
		}
	}
	
	function send(f) {
		
		var id = f.user_id.value.trim();
		var pwd = f.user_pwd.value.trim();
		
		if(id==''){
			alert('아이디를 입력하세요');
			f.id.value='';
			f.id.focus();
			return;
		}
		
		if(pwd==''){
			alert('비밀번호를 입력하세요');
			f.pwd.value='';
			f.pwd.focus();
			return;
		}
		
		//
		f.action="login.do"; 
		f.submit();
	}
	
	function checkKakaoEmail(checkKakaoEmail) {
		alert(checkKakaoEmail);
		
		//
		location.href='${ pageContext.request.contextPath }/user/kakao_login.do?kakao_user_email='+ checkKakaoEmail;
		//
		// ajax - ${ pageContext.request.contextPath }/user/kakao_login.do?kakao_user_email
		// res_data.reason == id가 없음  ->  confirm('소셜 가입하시겠습니까?')
		// -> kakaouser insert () -> db 삽입 -> redirect ->kakaouser login.do
		var kakao_user_email = f.checkKakaoEmail.value;
		
		$.ajax({
			url : 'kakao_login.do',
			data : {'kakao_user_email':kakao_user_email},
			dataType : 'json',
			success:function(res_data){UserController.java
				
				if(res_data.result =='diff'){
					alert('카카오 계정이 존재하지 않습니다.');
					f.kakao_user_email.value='';
					f.kakao_user_email.focus();
					return;
			}
			
			//결과값, 가입여부 물어보기
			if(confirm('소셜 가입하기겠습니까?')==false)return;
			
			//자바스크립트을 이용해서 가입정보 전달.
		   location.href='kakao_login.do?kakao_user_email' + f.kakao_user_email.value;
			
			}
		
		});
	
	}
	
	
	</script>

</head>
<body>
	<div class="container"> 
	<div class="col-lg-4"></div> 
	<div class="col-lg-4"> 
	<div class="jumbotron" style="padding-top:20px;">
	<form>
	<input type="hidden" name="url" value="${param.url}">
	<table border="1" align="center">
		<caption><h1>로그인</h1>
		<span class="txt"><h4>영화의 모든정보가 한자리에!!<h4></span></caption>
		<div class="form-group"> 
			<tr>
				<th>아이디</th>
				<td><input type="text" name="user_id" placeholder="아이디"  class="form-control"></td>
			</tr>
		</div>
		
		<div class="form-group"> 
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="user_pwd" placeholder="숫자, 영문 7자리 이상"  class="form-control"></td>
			</tr>
		</div>
		
		<div id="div_login_cancel">
			<tr>
				<td colspan="2" align="center" style="border:none;">
					<input type="button"  class="btn btn-primary form-control" value="로그인"  onclick="send(this.form);">
					<input type="button" value="취소하기" onclick="location.href = location.href;"> 
				</td>	
			</tr>
		</div>
		
		<div id="div_or">
			<tr>
				<td colspan="2" align="center" style="border:none;">
					<span class="txt_divide">
						<em>--------------또는--------------</em>
					</span>
				</td>
			</tr>
		</div>
		
		<div id="kakao_login">
			<tr>
				<td colspan="2" align="center" style="border:none;">
					
				<a id="kakao-login-btn"></a>
					<script type='text/javascript'>
				  //<![CDATA[
				    // 사용할 앱의 JavaScript 키를 설정해 주세요.
				    Kakao.init('f597d45351168eb2465c620bfee9ca1c');
				    // 카카오 로그인 버튼을 생성합니다.
				    Kakao.Auth.createLoginButton({
				      container: '#kakao-login-btn',
				      success: function(authObj) {
				        // 로그인 성공시, API를 호출합니다.
				        Kakao.API.request({
				          url: '/v2/user/me',
				          success: function(res) {	        	  
				            	alert(JSON.stringify(res));
				            	checkKakaoEmail((res.kakao_account.email));
				          },
				          fail: function(error) {
				            alert(JSON.stringify(error));
				          }
				        });
				      },
				      fail: function(err) {
				        alert(JSON.stringify(err));
				      }
				    });
				  //]]>
				</script>
			
			
				</td>
			</tr>
		</div>
	
	</table>
	</form>
	
	</div> 
	</div> 
	<div class="col-lg-4"></div>
 	</div>
	
</body>
</html>