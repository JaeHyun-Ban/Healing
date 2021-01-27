<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
	
	
	<section>
		<div class="container">
			<div class="row">
				<div class="notice-title">
					<h2>공지사항</h2>
					<hr>
				</div>
	
				<div class="notice-wrap">
					<div class="notice-p">
						<p style="font-size: x-large">
							<strong>※ 중요 내용을 안내해드립니다.</strong>
						</p>
					</div>
					<div class="notice-table">
						<table class="board-table table table-bordered table table-hover">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>등록일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="vo" items="${list }">
								<tr>
									<td>${vo.nno }</td>
									<td><a href="#">${vo.ntitle }</a></td>
									<td>${vo.id }</td>
									<td><fmt:formatDate value="${vo.updatedate }" pattern="yyyy년MM월dd일  hh시mm분"/></td>
									<td>${vo.nviews }</td>
								</tr>
								</c:forEach>
					
							</tbody>
						</table>
					</div>
					<div class="write-button">
						<button type="button" class="btn btn-info btn-sm" onclick="location.href='write' ">게시글작성</button>
					</div>
	
					<div class="paging">
						<ul class="pagination">
							<li><a href="#">이전</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">다음</a></li>
						</ul>
					</div>
				</div>
	
			</div>
		</div>
	</section>
	
	
	<script type="text/javascript">
			window.onload = function() {
			 if(history.state === '' ) return;
			 
			 var msg = "${msg}"; 
			 if(msg !== '') {
				 alert(msg);
				 history.replaceState('', null, null); 
			 }
		}
	</script>
	