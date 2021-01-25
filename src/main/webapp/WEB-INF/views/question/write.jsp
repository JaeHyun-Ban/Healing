<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
	
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="board-title">
					<p>질문작성</p>
				</div>
				<div class="write-wrap">
				<form action="registForm" method="post" name="registForm">
					<div class="write-box">
						<div class="write-title">
							<dl>
								<dt class="title-dt">제목</dt>
								<dd>
									<input type="text" name="qtitle" placeholder="제목입력">
								</dd>
							</dl>
						</div>
						<div class="write-info">
							<dl>
								<dt class="info-dt">내용</dt>
							</dl>
						</div>
						<div class="write-content">
							<textarea placeholder="내용입력" name="qcontent" ></textarea>
						</div>
	
						<div class="write-button">
							<button type="button" class="btn btn-info" onclick="location.href='board'">목록</button>
							<button type="button" class="btn btn-info" onclick="regist()">공지 등록</button>
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
			if (document.registForm.qtitle.value === '') {
				alert("제목을 입력해주세요.")
				return;
			} else if (document.registForm.qcontent.value === '') {
				alert("내용을 입력해주세요.")
				return;
			} else {
				document.registForm.submit(); 
			}

		}
	</script>