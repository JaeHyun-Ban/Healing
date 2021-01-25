<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
	
	<section>
		<div class="container">
			<div class="board-detail">
				<div class="board-title">
					<p>공지내용</p>
				</div>
				<form action="update" method="post" name="update">
					<div class="detail-body">
						<div class="box">
							<div class="first">							
								<span style="font-size: 20px">제목:<input type="text" name="qtitle" value="${vo.qtitle }"/></span>
								<span ><strong >${vo.qno }</strong></span><strong>num:</strong>
								<input type="hidden" name="qno" value="${vo.qno }"/>
							</div>
							<div class="second">
								<span>조회수:<strong >${vo.qviews }</strong></span> <span>작성일:<strong><fmt:formatDate value="${vo.updatedate }" pattern="yyyy년MM월dd일 "/></strong></span>
								<span> 작성자:<strong >${vo.qid }</strong></span>  
							</div>
							<div class="third">
								<div class="content">내용</div>
								<div class="content-detail">
									<textarea name="qcontent">${vo.qcontent }</textarea>
								</div>
							</div>
	
						</div>
						<div class="button">
							<button type="button" class="btn btn-danger btn-lage" id="deletebtn">삭제</button>
							<button type="button" class="btn btn-success btn-large" id="updatebtn">수정</button>
							<button type="button" class="btn btn-info btn-large" onclick="location.href='board'">목록</button>
								
						</div>
	
					</div>
				</form>	
			</div>
		</div>
	</section>
	
	
	
	
	<div class="end"></div>
	
	<script type="text/javascript">
	
	var updatebtn = document.getElementById("updatebtn");
	updatebtn.onclick = function(){

			if (document.update.qtitle.value === '') {
				alert("제목은 필수 입니다");
				document.update.ntitle.focus();
				return;
			} else if (document.update.qcontent.value === '') {
				alert("제목은 필수 입니다");
				document.update.ncontent.focus();
				return;
			} else {
				document.update.action = "update"; 
				document.update.submit(); 
			}
		}
	
	var deletebtn = document.getElementById("deletebtn");
		deletebtn.onclick = function() {
			
			document.update.action = "delete"; 
			document.update.submit(); 
		}
	
	
	</script>	
	
	
	
	