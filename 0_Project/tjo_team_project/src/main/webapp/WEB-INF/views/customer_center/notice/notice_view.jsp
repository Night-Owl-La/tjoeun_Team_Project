<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
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
						<!-- 고객 서비스 -->
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
							<form action="notice_delete.do">
								<input type="hidden" name="selectPage" value="${ param.selectPage }" />
								<input type="hidden" name="page" value="${ param.page }" />
								<input type="hidden" name="notice_idx" value="${ noticeVo.notice_idx }">
								<!-- table -->
								<div class="content_board_main">
									<div class="content_board_main_subject-area">
								        <div class="content_board_main_subject-area_title">
								            ${ noticeVo.notice_title }
								        </div>
								        <div class="content_board_main_subject-area_about-author">
								            <span class="content_board_main_subject-area_about-author_author">${ noticeVo.notice_author }</span>
								            <span class="content_board_main_subject-area_about-author_regdate">${ noticeVo.notice_regdate }</span>
								            <span class="content_board_main_subject-area_about-author_view-count">${ noticeVo.notice_view_count }</span>
								        </div>
							        </div>
							        <div class="content_board_main_content">
								        <div class="content_board_main_content_item">
								        	${ noticeVo.notice_content }
								        </div>
							        </div>
							    </div>
								<div class="content_board_bottom">
									<input type="button" class="common_btn" value="수정" onclick="notice_update(this.form);"/>
									<input type="button" class="common_btn" value="삭제" onclick="notice_delete(this.form);"/>
								</div>
							</form>
						</div>
					</div>
				</article>
			</section>
		</div>
	</main>
</body>
<script type="text/javascript">

function notice_update(form) {
	// TODO UPDATE CHECK ------------------------ //
	form.action = "notice_update_form.do";
	form.submit();
}

function notice_delete(form) {
	// TODO DELETE CHECK ------------------------ //
	form.submit();
}

</script>
</html>