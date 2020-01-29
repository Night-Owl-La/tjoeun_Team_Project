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

	<main id="wrap_main">
		<!-- inner_wrap main -->
		<div class="inner_wrap_main">

			<!-- content -->
			<section id="content">
				<article class="menu_content">
					<!-- 고객 서비스 -->
					<div class="item_content">
						<div class="header_table">
							<h2>
								<span class="title_header_table">Notice</span>
							</h2>
							<span class="search_bar"> 
								<select name="search_option" class="search_option">
									<option value="all">전체</option>
									<option value="title">제목</option>
									<option value="category">구분</option>
								</select>
								<input type="text" class="search_text"> 
								<input type="button" value="검색" class="search_btn">
							</span>
						</div>
						<c:if test="${ empty noticeList }">
							<span>작성된 공지사항이 없습니다.</span>
						</c:if>
						<c:if test="${ not empty noticeList }">
							<table class="table table-hover table_item_content">
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
											<a href="#" class="link_notice_title" onclick="location.href='${pageContext.request.contextPath}/notice/notice_view.do?notice_idx=${ notice.notice_idx }&selectPage=${ param.selectPage }&page=${ param.page }'">
												<span>${ notice.notice_title }</span>
											</a>
										</td>
										<td style="width: 1%;">${ notice.notice_regdate }</td>
										<td style="width: 1%;">${ notice.notice_view_count }</td>
									</tr>
								</c:forEach>
							</table>
						</c:if>
						<div class="bottom_table">
							<input type="button" value="글쓰기" class="write_btn" onclick="location.href='${pageContext.request.contextPath}/notice/notice_insert_form.do?selectPage=${ param.selectPage }&page=${ param.page }'"/>
						</div>
					</div>
					<!-- paging -->
					<div class="paging_content">
						${ pageMenu }
					</div>
				</article>
			</section>
		</div>
	</main>

</body>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('.search_btn').click(function() {
			var search_option = $('.search_option').val();
			var search_text = $('.search_text').val();
			// 검색 요청 보내기.
			location.href='${ pageContext.request.contextPath }/notice/notice.do?search_option='
				+ search_option + '&search_text=' + encodeURIComponent(search_text)
				+ '&selectPage=${ param.selectPage }&page=1';
		});
	});

</script>
</html>