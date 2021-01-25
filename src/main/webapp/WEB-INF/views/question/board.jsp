<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/board.css">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
	<section>
		<div class="container">
			<div class="row">
				<div class="notice-title">
					<h2>질문게시판</h2>
					<hr>
				</div>
	
				<div class="notice-wrap">
					<form action="board">
						<div class="search-wrap">
							<button type="submit" class="btn btn-info search-btn">검색</button>
	
							<input type="text" class="form-control search-input" name="searchName" value="${pageVO.cri.searchName }"> 
							<select class="form-control search-select" name="searchType">
								<option value="qtitle" ${pageVO.cri.searchType eq 'qtitle' ? 'selected' : '' }>제목</option>
								<option value="qcontent" ${pageVO.cri.searchType eq 'qcontent' ? 'selected' : '' }>내용</option>
								<option value="qid" ${pageVO.cri.searchType eq 'qid' ? 'selected' : '' }>작성자</option>
							</select>
						</div>
						<input type="hidden" name="pageNum" value="1">
						<input type="hidden" name="amount" value="${pageVO.amount }">
					</form>
	
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
								<c:forEach var="vo" items="${list}">
								<tr>
									<td>${vo.qno }</td>
									<td><a href="detail?qno=${vo.qno }">${vo.qtitle }</a></td>
									<td>${vo.qid }</td>
									<td><fmt:formatDate value="${vo.updatedate }" pattern="yyyy년MM월dd일 " /></td>
									<td>${vo.qviews }</td>
								</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="write-button">
						<button type="button" class="btn btn-info btn-sm" onclick="location.href='write' ">게시글작성</button>
					</div>
					
					<form action="board" name="pageForm">
					<div class="paging">
						<ul class="pagination pagination-sm">
						
						<c:if test="${pageVO.prev }">
							<li><a href="qboard?pageNum=${pageVO.startPage-1 }&amount=${pageVO.amount }">이전</a></li>
						</c:if>
						 <c:forEach var="num" begin="${pageVO.startPage }" end="${pageVO.endPage }">
                        <li class="${num == pageVO.pageNum ? 'active' : '' }">
                        	<a href="qboard?pageNum=${num }&amount=${pageVO.amount}">${num }</a>
                        </li>
                        </c:forEach>
						<c:if test="${pageVO.next }">
                        <li>
                        	<a herf="qboard?pageNum=${pageVO.endPage+1 }&amount=${pageVO.amount}">다음</a>
                        </li>
                        </c:if>
						</ul>
					</div>
					<input type="hidden" name="pageNum" value="${pageVO.cri.pageNum }">
                    <input type="hidden" name="amount" value="${pageVO.cri.amount }">
                    <input type="hidden" name="searchType" value="${pageVO.cri.searchType }">
                    <input type="hidden" name="searchName" value="${pageVO.cri.searchName }">
                   
					</form>
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
			
			
			
			var pagination = document.querySelector(".pagination");	
			pagination.onclick = function() {
				event.preventDefault();
				if(event.target.tagName !== "A") return; 
				
				var pageNum = event.target.dataset.page; 
				document.pageForm.pageNum.value = pageNum; 
				
				document.pageForm.submit(); 
				
			}
			
			
			
			
			
			
			

	</script>