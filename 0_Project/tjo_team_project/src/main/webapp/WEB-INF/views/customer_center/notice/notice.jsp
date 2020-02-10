<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../customer_fixed.jsp" %>

	<main id="main-wrap">
		<!-- inner_wrap main -->
		<div class="main-wrap_inner-wrap">

			<!-- content -->
			<section>
				<article> 
					<div id="main-wrap_content">
						<!-- 게시판 -->
						<div class="content_board">
							<div class="content_board_top">
								<h2>
									<span class="content_board_top_title">Notice</span>
								</h2>
								<span class="content_board_top_search-bar"> 
									<select name="search_option" class="content_board_top_search-bar_search-option">
										<option value="all">전체</option>
										<option value="title">제목</option>
										<option value="category">구분</option>
									</select>
									<input type="text" class="content_board_top_search-bar_search-text"> 
									<input type="button" value="검색" class="content_board_top_search-bar_search-btn">
								</span>
							</div>
							<c:if test="${ empty noticeList }">
								<span>작성된 공지사항이 없습니다.</span>
							</c:if>
							<c:if test="${ not empty noticeList }">
								<table class="table table-hover content_board_main-table">
									<tr>
										<th>No</th>
										<th>category</th>
										<th>Title</th>
										<th>Date</th>
										<th>View Count</th>
									</tr>
									<!-- sample data-->
									<c:forEach var="notice" items="${ noticeList }">
										<tr>
											<td style="width: 1%;">${ notice.notice_idx }</td>
											<td style="width: 1%;">${ notice.notice_category }</td>
											<td style="width: 1%;">
												<a href="#" class="content_board_main-table_link-notice-title" onclick="send_DetailView('${ notice.notice_idx }', '${ param.selectPage }', '${ param.page }');">
													<span>${ notice.notice_title }</span>
												</a>
											</td>
											<td style="width: 1%;">${ notice.notice_regdate }</td>
											<td style="width: 1%;">${ notice.notice_view_count }</td>
										</tr>
									</c:forEach>
								</table>
							</c:if>
							<div class="content_board_bottom">
								<input type="button" value="글쓰기" class="common_btn" onclick="send_InsertForm('${ param.selectPage }', '${ param.page }');"/>
							</div>
						</div>
						<!-- paging -->
						<div class="main-wrap_content_paging">
							${ pageMenu }
						</div>
					</div>
				</article>
			</section>
		</div>
	</main>

</body>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('.content_board_top_search-bar_search-btn').click(function() {
			var search_option = $('.content_board_top_search-bar_search-option').val();
			var search_text = $('.content_board_top_search-bar_search-text').val();
			// 검색 요청 보내기.
			location.href='${ pageContext.request.contextPath }/notice/notice.do?search_option='
				+ search_option + '&search_text=' + encodeURIComponent(search_text)
				+ '&selectPage=${ param.selectPage }&page=1';
		});
	});
	
	function send_DetailView(notice_idx, selectPage, page) {
		location.href='${pageContext.request.contextPath}/notice/notice_view.do?notice_idx=' + notice_idx + '&selectPage=' + selectPage + '&page=' + page;
	}
	
	function send_InsertForm(selectPage, page) {
		location.href='${pageContext.request.contextPath}/notice/notice_insert_form.do?selectPage=' + selectPage + '&page=' + page;
	}

</script>
</html>