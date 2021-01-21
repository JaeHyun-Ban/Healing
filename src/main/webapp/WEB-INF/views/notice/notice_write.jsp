<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
	
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="board-title">
					<p>공지작성</p>
				</div>
				<div class="write-wrap">
				<form action="registForm" method="post" name="registForm">
					<div class="write-box">
						<div class="write-title">
							<dl>
								<dt class="title-dt">제목</dt>
								<dd>
									<input type="text" name="title" placeholder="제목입력">
								</dd>
							</dl>
						</div>
						<div class="write-info">
							<dl>
								<dt class="info-dt">내용</dt>
							</dl>
						</div>
						<!-- <div class="write-info">
	                            <dl>
	                                <dt>아이디</dt>
	                                <dd><input type="text" placeholder="사용자아이디"></dd>
	                            </dl>
	                            <dl>
	                                <dt>비밀번호</dt>
	                                <dd><input type="password" placeholder="비밀번호입력"></dd>
	                            </dl>
	                        </div>
	                        </div> -->
						<div class="write-content">
							<textarea placeholder="내용입력" name="content" ></textarea>
						</div>
	
						<div class="write-button">
							<button type="button" class="btn btn-info" onclick="regist()">공지 등록</button>
							<button type="button" class="btn btn-info" onclick="location.href='board'">목록</button>
						</div>
					</div>
				</form>
				</div>
			</div>
	
		</div>
		</div>
	</section>
	
	
	
	<script>
		

		function regist() {
			if (document.registForm.title.value === '') {
				alert("제목을 입력해주세요.")
				return;
			} else if (document.registForm.content.value === '') {
				alert("내용을 입력해주세요.")
				return;
			} else {
				console.log(document.registForm.title.value);
				console.log(document.registForm.content.value);
				console.log(document.registForm);
				document.registForm.submit(); 
			}

		}
	</script>