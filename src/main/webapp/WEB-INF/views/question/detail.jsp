<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
	
	
	<section>
		<div class="container">
			<div class="board-detail">
				<div class="board-title">
					<p>질문내용</p>
	
				</div>
				<div class="detail-body">
					<div class="box">
						<div class="first">
							<span style="font-size: 20px">제목:${vo.qtitle }</span> <strong>num: ${vo.qno }</strong>
						</div>
						<div class="second">
							<span>조회수:<strong>${vo.qviews }</strong></span> <span>작성일:<strong><fmt:formatDate value="${vo.updatedate }" pattern="yyyy년MM월dd일 "/></strong></span>
							<span>작성자:<strong>${vo.qid }</strong></span>  
						</div>
						<div class="third">
							<div class="content">내용</div>
							<div class="content-detail">
								<textarea readonly>${vo.qcontent }</textarea>
							</div>
						</div>
	
					</div>
					<div class="button">
							<button type="button" class="btn btn-success btn-large disabled" onclick="location.href='modify?qno=${vo.qno}'">수정</button>
							<button type="button" class="btn btn-info btn-large" onclick="location.href='board'">목록</button>
	
					</div>
	
				</div>
				<div class="detail-reply">
					<div class="reply-box">
						<span><textarea placeholder="답변작성공간"></textarea></span>
						<button type="button" class="reply-btn btn btn-info">등록</button>
					</div>
				</div>
				<div class="reply-answer">
					<div class="answer-box">
						<div class="reply-first">
							<span>관리자아이디</span> <span>2021-01-19</span> <span>16:23</span>
						</div>
						<div class="reply-second">질문에 대한 답변 내용은 ~~~~입니다</div>
					</div>
				</div>
	
			</div>
		</div>
	</section>
	
	
	
	
	<div class="end"></div>