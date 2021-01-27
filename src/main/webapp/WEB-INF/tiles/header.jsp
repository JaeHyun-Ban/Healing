<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <header class="MainHeader">
            <nav class="navbar">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <!-- 화면이 휴대폰사이즈로 줄었을때 나오는 영역 -->
                        <button type="button" class="navbar-toggle topmenubtn" data-toggle="collapse"
                            data-target="#myNavbar">
                            <span class="glyphicon glyphicon-th-list"></span>
                        </button>
                       		 <li class = "title">
                                <a href="${pageContext.request.contextPath }">쉬었다갈래?</a>
                            </li>
                    </div>

                    <!-- 메뉴 작성부분 -->
                    <div class="collapse navbar-collapse navbar-right" id="myNavbar">

                        <ul class="nav navbar-nav topmenu">
                            <li>
                                <a href="${pageContext.request.contextPath }/noticeBoard/noticeList">공지사항</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/question/board">고객센터</a>
                            </li>
                            
                            <c:choose>
                            <c:when test="${sessionScope.userVO == null}">
                            <li>
                                <a href="${pageContext.request.contextPath }/user/login">로그인</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/user/join" onclick="kakaoLogout()">회원가입</a>
                            </li>
                            </c:when>
                            
                            <c:otherwise>
                            
                            <li>
                                <a href="${pageContext.request.contextPath }/user/logout">로그아웃</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath }/user/mypage">마이페이지</a>
                            </li>
                            
                            </c:otherwise>
                            </c:choose>
                            
                        </ul>
                    </div>
                </div>
            </nav>

        </header>
        
<!-- 카카오 로그아웃 토큰제거 추가-->
<script type="text/javascript">
function kakaoLogout() {
	//가지고 있는 토큰 확인
    if (!Kakao.Auth.getAccessToken()) {
      console.log('Not logged in.');
      return;
    }
    Kakao.Auth.logout(function () {
    	//가지고 있는 토큰이 존재하는지 확인
      console.log('logout ok\naccess token -> ' + Kakao.Auth.getAccessToken());
    })
  }

</script>       
        
        
        
        
