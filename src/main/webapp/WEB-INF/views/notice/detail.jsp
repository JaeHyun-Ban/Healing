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
				<form>
					<div class="detail-body">
						<div class="box">
							<div class="first">							
								<span style="font-size: 20px">제목:${vo.ntitle }</span> <strong>num: ${vo.nno }</strong>
							</div>
							<div class="second">
								<span>조회수:<strong>${vo.nviews }</strong></span> <span>작성일:<strong><fmt:formatDate value="${vo.updatedate }" pattern="yyyy년MM월dd일 "/></strong></span>
								<span>작성자:<strong>${vo.nid }</strong></span>  
							</div>
							<div class="third">
								<div class="content">내용</div>
								<div class="content-detail">
									<textarea readonly>${vo.ncontent }</textarea>
								</div>
							</div>
	
						</div>
						<div class="button">
							<button type="button" class="btn btn-success btn-large disabled" onclick="location.href='modify?nno=${vo.nno}'">수정</button>
							<button type="button" class="btn btn-info btn-large" onclick="location.href='board'">목록</button>
	
						</div>
	
					</div>
				</form>	
			</div>
		</div>
	</section>
	
	
	
	
	<div class="end"></div>