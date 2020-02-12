<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://cdn.ckeditor.com/4.13.1/full/ckeditor.js"></script>
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
							<form action="notice_update.do">
								<input type="hidden" name="selectPage" value="${ param.selectPage }" />
								<input type="hidden" name="page" value="${ param.page }" />
								<input type="hidden" name="notice_idx" value="${ noticeVo.notice_idx }" />
								<table class="table table-hover content_board_main-table">
									<tr>
										<th>카테고리</th>
										<td><input name="notice_category" class="content_board_main-table_category" type="text" value="${ noticeVo.notice_category }"/></td>
									</tr>
									<tr>
										<th>제목</th>
										<td><input name="notice_title" type="text" class="content_board_main-table_title" value="${ noticeVo.notice_title }" /></td>
									</tr>
									<tr>
										<th>내용</th>
										<td>
											<textarea name="notice_content" id="content_table" class="content_board_main-table_content" rows="10">${ noticeVo.notice_content }</textarea>
										</td>
										<script>
										// Replace the <textarea id="editor1"> with a CKEditor instance, using default configuration.
										CKEDITOR.replace('content_table', {
											enterMode: CKEDITOR.ENTER_BR,
											shiftEnterMode: CKEDITOR.ENTER_P,
											toolbarGroups: [
									
												{ name: 'document', groups: ['mode', 'document', 'doctools'] },
												{ name: 'basicstyles', groups: ['basicstyles', 'cleanup'] },
												{ name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi'] },
												{ name: 'links' },
												{ name: 'insert' },
												'/',
												{ name: 'styles' },
												{ name: 'colors' },
												{ name: 'tools' },
												{ name: 'others' },
												{ name: 'about' }
											]
										});
										</script>
									</tr>
									<tr>
										<th>작성자</th>
										<td><input name="notice_author" class="content_board_main-table_author" value="${ noticeVo.notice_author }" readonly="readonly"/></td>
									</tr>
								</table>
								<div class="content_board_bottom">
									<input type="button" value="작성" class="common_btn" onclick="notice_update(this.form);"/>
									<input type="button" value="취소" class="common_btn" onclick="cancel('${ param.selectPage }', '${ param.page }');"/>
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
		// TODO ----------------- form data check ----------------
		// TODO ----------------- form data check ----------------
		if(form.notice_category.value == ''){
			alert('카테고리가 비어있습니다.');
			form.notice_category.value='';
			form.notice_category.focus();
			return;
		}
		
		if(form.notice_title.value == ''){
			alert('제목이 비어있습니다.');
			form.notice_title.value='';
			form.notice_title.focus();
			return;
		}
		
		if(form.notice_content.value == ''){
			alert('내용이 비어있습니다.');
			form.notice_content.value='';
			form.notice_content.focus();
			return;
		}
		
		form.submit();
	}
	
	function cancel(selectPage, page) {
		location.href='${pageContext.request.contextPath}/notice/notice.do?selectPage=' + selectPage + '&page=' + page;
	}
</script>
</html>