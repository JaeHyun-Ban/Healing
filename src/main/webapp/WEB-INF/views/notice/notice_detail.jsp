<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
	
	<section>
		<div class="container">
			<div class="board-detail">
				<div class="board-title">
					<p>공지내용</p>
	
				</div>
				<div class="detail-body">
					<div class="box">
						<div class="first">
							<span><input type="text" placeholder="첫번쨰 글"></span> <strong>num
								: 1</strong>
						</div>
						<div class="second">
							<span>조회수<strong>23</strong></span> <span>작성일:<strong>2021-01-19</strong></span>
							<span>작성자:<strong>홍길동</strong></span>
						</div>
						<div class="third">
							<div class="content">내용</div>
							<div class="content-detail">
								<textarea>동해물과 백두산이 마르고 닳도록</textarea>
							</div>
						</div>
	
					</div>
					<div class="button">
						<button type="button" class="btn btn-danger btn-lage disabled">삭제</button>
						<button type="button" class="btn btn-success btn-large disabled">수정</button>
						<button type="button" class="btn btn-info btn-large">목록</button>
	
					</div>
	
				</div>
	
			</div>
		</div>
	</section>
	
	
	
	
	<div class="end"></div>