<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 기본 CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/base.css">
<!-- 개인 디자인 추가-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/login_join.css">
<!-- SweetAlert(예쁜디자인 alert) -->
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
						<button type="button" class="btn btn-warning btn-idChk"
							id="btnidChk" onclick="idChk()">아이디 중복 체크</button>
						<div class="input-shadow">
							<input id="id" type="text" class="form-control" name="id"
								placeholder="영어,숫자 8글자 이상" required="required"
								oninvalid="this.setCustomValidity('아이디를 입력해주세요')">
						</div>
					</div>

					<div class="form-group">
						<label for="pwd">비밀번호</label>
						<div class="input-shadow">
							<input id="pwd" type="password" class="form-control" name="pwd"
								placeholder="영어,숫자 8글자 이상(특수문자 1개 포함)" required="required"
								oninvalid="this.setCustomValidity('비밀번호를 입력하세요')">
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
							<input type="text" class="form-control" id="addrBasic"
								name="addrBasic" placeholder="기본주소" readonly>
						</div>
						<div class="input-shadow">
							<!-- 상세 주소 -->
							<input type="text" class="form-control" id="addrDetail"
								name="addrDetail" placeholder="상세주소">
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
		//console.log(document.getElementById("id").value); //값확인
		if (document.getElementById("id").value === "") {
			swal({
				title : '아이디를 입력해주세요'
			})
			return;
		} else {
			var id = document.getElementById("id").value;
			//비동기 통신 아이디 검증
			$
					.ajax({
						type : "POST",
						url : "idCheck", //뭐엿지 이거 -> 컨트롤러로 보내는 요청
						data : JSON.stringify({
							"id" : id
						}),
						contentType : "application/json; charset=utf-8", //전송 타입
						success : function(data) {//성공시
							console.log(data);//확인해보기
							var regexId = /^[A-Za-z0-9+]{8,}$/; //아이디 정규표현식
							//중복 O + id정규 표현식 X
							if (data === 1
									|| regexId.test(document
											.getElementById("id").value) == false) {
								document.getElementById("id").style.border = "2px solid red";
								document.getElementById("id").focus();
								swal({
									icon : 'error',
									title : '사용할 수 없는 아이디 입니다.'
								});

							} else { //중복 X
								document.getElementById('id').setAttribute(
										'readonly', true);
								document.getElementById("id").style.borderColor = "#ccc";
								swal({
									icon : 'success',
									title : '사용가능한 아이디 입니다.'
								});
							}
						},
						error : function(status, error) {
							alert("서버에러가 발생했습니다, 관리자에게 문의해주세요");
						}

					})
		}
	};
</script>

<!-- 정규 표현식 검사 -->
<script type="text/javascript">
	//필요없을 듯
	/* //아이디 검사
	var id = document.getElementById("id");//아이디 값
	id.onkeyup = function() { //키보드 이벤트
		var regexId = /^[A-Za-z0-9+]{8,}$/; //아이디 정규표현식
		if (regexId.test(document.getElementById("id").value) == true) {//test: 정규표현식에 들어맞는지 확인 -> true or false
			document.getElementById("id").style.border = "2px solid green";
		} 
	} */

	//비밀번호 검사
	var pwd = document.getElementById("pwd");
	pwd.onkeyup = function() {
		//정규표현식
		//https://developer.mozilla.org/ko/docs/Web/JavaScript/Guide/%EC%A0%95%EA%B7%9C%EC%8B%9D
		//var regexPwd = /^[~!@#$%^&*()].{1}[a-z0-9+].{7,}]$/;
		var regexPwd = /^(?=.*[0-9])(?=.[a-z])[~!@#$%^&*()].{1}[a-z0-9+].{7,}]$/;
		//if(regexPW.test)
		if (regexPwd.test(pwd.value) == true) {
			document.getElementById("pwd").style.border = "2px solid green";
		} else {
			document.getElementById("pwd").style.border = "2px solid red";
		}
	}
	//비밀번호 확인 검사
	var pwdChk = document.getElementById("pwdChk");
	pwdChk.onkeyup = function () {
		
	}
</script>

<!-- 주소 검색 팝업 -->
<script>
	//팝업으로 열기
	function goPopup() {
		var pop = window
				.open("${pageContext.request.contextPath}/resources/popup/jusoPopup.jsp",
						"pop",
						"width=570,height=420, left=300, top=75, scrollbars=yes, resizable=yes");
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

















