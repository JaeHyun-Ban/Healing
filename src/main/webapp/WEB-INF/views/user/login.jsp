<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 기본 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/base.css">
<!-- 개인 디자인 추가공간-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/login_join.css">
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script
	src="${pageContext.request.contextPath }/resources/js/sweetalert/sweetalert.min.js"></script>
	<!-- kakao JavaScript SDK포함, SDK안에 name객체가 이미 존재한다 -->	

<section>
	<div class="container">
		<div class="row">
			<div class="login-form col-xs-12 col-sm-8 col-md-8">
				<div class="login-title">로그인</div>

				<form action="userLogin" id="loginForm" method="post">
					<div class="form-group">
						<label for="userId">아이디</label>
						<div class="input-shadow">
							<input type="text" class="form-control" id="userId" name="userId" required="required" 
								oninvalid="this.setCustomValidity('아이디를 입력하세요')" />
						</div>
					</div>
					<div class="form-group">

						<label for="pwd">비밀번호</label>
						<div class="input-shadow">
							<input type="password" class="form-control" id="userPwd" name="userPwd" required="required"
								oninvalid="this.setCustomValidity('비밀번호를 입력하세요')">
						</div>
					</div>
					<!-- 구분선 생성-->
					<div class="login-btn">
						<button type="submit" class="btn btn-success btn-block btn-login" id="loginBtn">로그인</button>
						<button type="button" class="btn btn-primary btn-block btn-join" id="joinBtn">회원가입</button>
						<!-- 클릭시 회원가입 창 이동 -->
					</div>
					<!-- 카카오  -->
					<a id="custom-login-btn" href="javascript:loginWithKakao()">
						<img alt="" src="${pageContext.request.contextPath }/resources/img/kakao_login_medium_wide.png">
					</a>
					
				</form>
			</div>
		</div>
	</div>

</section>

<!-- 메세지 알림창 -->
<script>
	var msg = "${msg}";
	if(msg != ""){
		swal({
			title: msg
		})
	}
</script>

<script>
	//회원가입 페이지 이동
	$("#joinBtn").click(function() {
		location.href = "join";
	})
</script>

<!-- 로그인 실패시 -->
<script type="text/javascript">
	
</script>

<!-- 카카오 SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	//카카오 SDK초기화
	Kakao.init('f80c539288e6a1c0860c93c58b8a3cc1');
	console.log('카카오SDK 초기화여부: ', Kakao.isInitialized());//SDK초기화 여부를 판단
</script>

<!-- 카카오 로그인 창이 사라질 때는,
토큰이 유지되어 있어서 나타나는 현상이라 
인터넷 어플리케이션을 종료하거나, 
쿠키를 삭제해주면 해결된다 -->
<!-- 카카오 로그인 기능 -->
<!-- https://developers.kakao.com/docs/latest/ko/getting-started/sdk-js -->
<script type="text/javascript">

  function loginWithKakao() {
    Kakao.Auth.login({
      success: function(authObj) {
        alert(JSON.stringify(authObj));
      },
      
      
      
      fail: function(err) {
        alert(JSON.stringify(err))
      },
    })
  }
</script>


























