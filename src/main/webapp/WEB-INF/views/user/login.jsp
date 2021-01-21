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

<section>
	<div class="container">
		<div class="row">
			<div class="login-form col-xs-12 col-sm-8 col-md-8">
				<div class="login-title">로그인</div>

				<form action="userLogin" id="loginForm" method="post">
					<div class="form-group">
						<label for="id">아이디</label>
						<div class="input-shadow">
							<input type="text" class="form-control" id="id" name="id" required="required" 
								oninvalid="this.setCustomValidity('아이디를 입력하세요')" />
						</div>
					</div>
					<div class="form-group">

						<label for="pwd">비밀번호</label>
						<div class="input-shadow">
							<input type="password" class="form-control" id="pwd" name="pwd" required="required"
								oninvalid="this.setCustomValidity('비밀번호를 입력하세요')">
						</div>
					</div>
					<!-- 구분선 생성-->
					<div class="login-btn">
						<button type="submit" class="btn btn-success btn-block btn-login" id="loginBtn">로그인</button>
						<button type="button" class="btn btn-primary btn-block btn-join" id="joinBtn">회원가입</button>
						<!-- 클릭시 회원가입 창 이동 -->
					</div>
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




























