<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
	<!-- 기본 CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/base.css">
    <!-- 개인 디자인 추가공간-->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/login_join.css">
    
    <section>
      <div class="container">
        <div class="row">
          <div class="login-form col-xs-12 col-sm-8 col-md-8">
            <div class="login-title">로그인</div>

            <form action="#">
              <div class="form-group">
                <label for="id">아이디</label>
                <div class="input-shadow">
                  <input type="text" class="form-control" id="id">
                </div>
              </div>
              <div class="form-group">

                <label for="pwd">비밀번호</label>
                <div class="input-shadow">
                  <input type="password" class="form-control" id="pwd">
                </div>
              </div>
              <!-- 구분선 생성-->
              <div class="login-btn">
                <button type="button" class="btn btn-success btn-block btn-login">로그인</button>
                <button type="button" class="btn btn-primary btn-block btn-join">회원가입</button><!-- 클릭시 회원가입 창 이동 -->
            </form>
          </div>
        </div>

      </div>

    </section>