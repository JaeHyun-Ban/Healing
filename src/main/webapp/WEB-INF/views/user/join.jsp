<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 기본 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/base.css">
<!-- 개인 디자인 추가-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/login_join.css">
<!-- SweetAlert(예쁜디자인 alert) -->
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script
	src="${pageContext.request.contextPath }/resources/js/sweetalert/sweetalert.min.js"></script>
<!-- 테마 색상: #e8ddcc, #ead0b8, #f0957d, #d96a53, #7dadcd -->


<!-- 회원가입 -->
<section>

	<div class="container">
		<!-- 그리드: https://www.w3schools.com/bootstrap/bootstrap_grid_system.asp -->
		<div class="row">
			<div class="join-form col-xs-12 col-sm-8 col-md-8">
				<!-- 참고한 w3school -->
				<!-- Form Inputs: https://www.w3schools.com/bootstrap/bootstrap_forms_inputs.asp -->
				<!-- https://www.w3schools.com/bootstrap/bootstrap_forms_inputs2.asp -->
				<!-- 버튼: https://www.w3schools.com/bootstrap/bootstrap_buttons.asp -->
				<!-- 값을 보내야하니 form -->
				<form action="userJoin" id="joinForm" method="post">
					<div class="title-box">회원가입</div>
					<div class="form-group">
						<label for="id">아이디</label>
						<button type="button" class="btn btn-warning btn-idChk"	onclick="idChk()">아이디 중복 체크</button>
						<div class="input-shadow">
							<input id="id" type="text" class="form-control" name="id" placeholder="영어,숫자 8글자 이상">
						</div>
					</div>

					<div class="form-group">
						<label for="pwd">비밀번호</label>
						<div class="input-shadow">
							<input id="pwd" type="password" class="form-control" name="pwd"
								placeholder="영어,숫자 8글자 이상(특수문자 1개 포함)">
						</div>
					</div>

					<!--비밀번호 확인-->
					<div class="form-group">
						<label for="pwdChk">비밀번호 확인</label>
						<div class="input-shadow">
							<input id="pwdChk" type="password" class="form-control"
								name="pwdChk" placeholder="비밀번호 확인">
						</div>
					</div>
					<div class="form-group">
						<label for="name">이름</label>
						<div class="input-shadow">
							<input id="name" type="text" class="form-control" name="name" />
						</div>
					</div>
					<div class="form-group">
						<label for="phone">휴대폰</label>
						<div class="input-shadow">
							<input id="phone" type="text" class="form-control" name="phone"
								placeholder="- 를 제외하고 입력하세요" />
						</div>
					</div>

					<div class="form-group">
						<label for="email">이메일</label>
						<div class="input-shadow">
							<input id="email" type="text" class="form-control" name="email" />
							<select class="form-control" name="email2" id="email2">
								<option>@naver.com</option>
								<option>@daum.net</option>
								<option>@gmail.com</option>
							</select>
						</div>
					</div>

					<!-- form-group묶는것 주의-->
					<div class="form-group addr-btn">
						<label for="addr">주소</label>
						<button class="btn btn-warning btn-addrfind" type="button"
							onclick="goPopup()">주소찾기</button>
						<!-- <div class="input-group"> -->
						<div class="input-shadow input-shadow-addr">
							<input id="zipNo" type="text" class="form-control addr-input"
								name="zipNo" placeholder="우편번호" readonly>
						</div>
						<div class="input-shadow">
							<!-- 기본 주소-->
							<input type="text" class="form-control" id="addrBasic" name="addrBasic"
								placeholder="기본주소" readonly>
						</div>S
						<div class="input-shadow">
							<!-- 상세 주소 -->
							<input type="text" class="form-control" id="addrDetail" name="addrDetail"
								placeholder="상세주소">
							<!-- </div> -->
						</div>
					</div>

					<!-- 버튼 -->
					<div class="form-group">
						<button type="button" class="btn btn-primary btn-block btn-join"
							id="joinBtn">회원가입</button>
						<button type="button" class="btn btn-success btn-block btn-login"
							id="loginBtn">로그인</button>
					</div>
				</form>
				
			</div>
		</div>
	</div>
</section>

<script>
	//아이디 중복확인 alert창(시간나면 modal시도)
	function idChk() {
		//중복 X
		//var id = document.getElementById("id");

		swal({
			icon : 'success',
			title : '사용 가능한 아이디 입니다.'
		//text: '사용 가능한 아이디 입니다.'
		});

		//중복 O
		/* swal({
			icon: 'error',
			title: '이미 등록된 아이디 입니다.'
		});  */
	};
</script>

<!-- 정규 표현식 검사 -->
<script type="text/javascript">
	//아이디 검사

	//비밀번호, 비밀번호 검사
	var pw = document.getElementById("pwdChk");
	pw.onkeyup = function() {
		//정규표현식 
		//https://developer.mozilla.org/ko/docs/Web/JavaScript/Guide/%EC%A0%95%EA%B7%9C%EC%8B%9D
		var regexPw = /^[~!@#$%^&*()]{1}[A-Za-z0-9]{7,}]$/;
		//if(regexPW.test)

	}
</script>

<!-- 주소 검색 팝업 -->
<script>
	//팝업으로 열기
	function goPopup() {
		var pop = window.open("${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp","pop",	"width=570,height=420, scrollbars=yes, resizable=yes");
	}
	//값을 받아오는 함수
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		//주소, 상세주소, 우편번호만 받아 대입
		document.getElementById("zipNo").value = zipNo;
		document.getElementById("addrBasic").value = roadAddrPart1;
		document.getElementById("addrDetail").value = addrDetail;
	}
</script>


<script type="text/javascript">
	//JQuery: #아이디
	$("#joinBtn").click(function() { //클릭이벤트

		$("#joinForm").submit();//Form전송

	})
</script>

<!-- 로그인 페이지 이동 -->
<script type="text/javascript">
	document.getElementById('loginBtn').onclick = function() {
		location.href = 'login';
	}
</script>

















