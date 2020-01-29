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
						<form action="notice_delete.do">
							<input type="hidden" name="selectPage" value="${ param.selectPage }" />
							<input type="hidden" name="page" value="${ param.page }" />
							<input type="hidden" name="notice_idx" value="${ noticeVo.notice_idx }">
							<!-- table -->
							<div class="view_item_content">
								<div class="header_view_item_content">
							        <div class="title_view_item_content">
							            ${ noticeVo.notice_title }
							        </div>
							        <div class="flex_info_view_itme_content">
							            <span class="author_view_item_content">${ noticeVo.notice_author }</span>
							            <span class="regdate_view_item_content">${ noticeVo.notice_regdate }</span>
							            <span class="viewcount_view_item_content">${ noticeVo.notice_view_count }</span>
							        </div>
						        </div>
						        <div class="content_item">
						        	${ noticeVo.notice_content }
						        </div>
						    </div>
							<div class="bottom_table">
								<input type="button" value="수정" onclick="notice_update(this.form);"/>
								<input type="button" value="삭제" onclick="notice_delete(this.form);"/>
							</div>
						</form>
						
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