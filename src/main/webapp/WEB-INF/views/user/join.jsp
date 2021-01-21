<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- 기본 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/base.css">
    <!-- 개인 디자인 추가-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login_join.css">
    <!-- 
     	 테마 색상
       #e8ddcc, #ead0b8, #f0957d, #d96a53, #7dadcd
    -->
    
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
            <form action="#">

              <div class="title-box">회원가입</div>

              <div class="form-group">
                <label for="id">아이디</label><button class="btn btn-primary btn-idChk" type="submit">아이디 중복 체크</button>
                <div class="input-shadow">
                  <input id="id" type="text" class="form-control" name="id" placeholder="8글자 이상">
                </div>
              </div>

              <div class="form-group">
                <label for="pwd">비밀번호</label>
                <div class="input-shadow">
                  <input id="pwd" type="password" class="form-control" name="pwd" placeholder="8글자 이상(특수만자 1개 이상 포함)">
                </div>
              </div>

              <!--비밀번호 확인-->
              <div class="form-group">
                <label for="pwdChk">비밀번호 확인</label>
                <div class="input-shadow">
                  <input id="pwdChk" type="password" class="form-control" name="pwdChk"
                    placeholder="8글자 이상(특수만자 1개 이상 포함)">
                </div>
              </div>

              <div class="form-group">
                <label for="email">이메일</label>
                <div class="input-shadow">
                  <input id="email" type="password" class="form-control" name="email" />
                </div>
              </div>

              <!-- form-group묶는것 주의-->
              <div class="form-group addr-btn">
                <label for="addr">주소</label>
                <button class="btn btn-default btn-addrfind" type="submit">주소찾기</button>
                <!-- <div class="input-group"> -->
                <div class="input-shadow input-shadow-addr">
                  <input id="addr" type="password" class="form-control addr-input" name="addr" placeholder="우편번호"
                    readonly>
                </div>
                <div class="input-shadow">
                  <!-- 기본 주소-->
                  <input type="text" class="form-control" placeholder="기본주소" readonly>
                </div>
                <div class="input-shadow">
                  <!-- 상세 주소 -->
                  <input type="text" class="form-control" placeholder="상세주소">
                  <!-- </div> -->
                </div>
              </div>

              <!-- 버튼 -->
              <div class="form-group">
                <button type="button" class="btn btn-primary btn-block btn-join">회원가입</button>
                <button type="button" class="btn btn-success btn-block btn-login">로그인</button>
              </div>
          </div>

          </form>

        </div>
      </div>
      <!-- ============================================================================== -->









    </section>
    