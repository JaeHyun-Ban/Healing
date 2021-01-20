<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<section>
        <div class="container">
            <div class="board-detail">
                <div class="board-title">
                    <p>게시판내용</p>
                    
                </div>
                <div class="detail-body">
                    <div class="box">
                        <div class="first">
                            <span><input type="text" placeholder="첫번쨰 글"></span>
                            <strong>num : 1</strong>
                        </div>
                        <div class="second">
                            <span>조회수</span>
                            <span>2021-01-14</span>
                            <span>작성자</span>
                        </div>
                        <div class="third">
                            <div class="content">내용</div>
                            <div class="content-detail">
                                <textarea >동해물과 백두산이 마르고 닳도록</textarea> 
                            </div>
                        </div>
                        
                    </div>
                    <div class="button">
                        <button type="button" class="btn btn-warning btn-sm disabled">삭제</button>
                        <button type="button" class="btn btn-success btn-sm disabled">수정</button>
                        <button type="button" class="btn btn-info btn-sm">목록</button>
                        
                    </div>
                    
                </div>

            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="board-reply">
                <div class="reply-box">
                    <div>
                        <div class="reply-img" style="display: inline-block;">
                            <img src="img/profile.png">
                        </div>
                        <div class="reply-text" style="display: inline-block;">
                            <textarea>로그인시 가능 . 아닐시 경고창</textarea>
                        </div>
                        
                        <div class="reply-button">
                            <button type="button" class="btn btn-info btn-xs">댓글등록</button>
                        </div>

                    </div>
                </div>
            </div>
            
        </div>
    </section>

    <div class="container">
        <div class="reply-detail">
            <div class="reply-detail-img" style="display: inline-block;">
                <img src="img/profile.png">
            </div>
            <div class="reply-detail-button" style="display: inline-block;">
                <a>댓글달림</a>
                <button type="button" class="btn btn-info btn-xs">수정</button>
                <button type="button" class="btn btn-info btn-xs">삭제</button>
            </div>    
        </div>
    </div>
    <div class="end">

    </div>