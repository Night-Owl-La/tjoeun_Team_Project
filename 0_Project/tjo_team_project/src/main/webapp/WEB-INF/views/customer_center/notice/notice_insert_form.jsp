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
								<form action="notice_insert.do">
									<input type="hidden" name="selectPage" value="${ param.selectPage }" />
									<input type="hidden" name="page" value="${ param.page }" />
									<table class="table table-hover table_item_content">
										<tr>
											<th>카테고리</th>
											<td><input name="notice_category" class="category_table_item_content" type="text" /></td>
										</tr>
										<tr>
											<th>제목</th>
											<td><input name="notice_title" type="text" class="title_table_item_content" /></td>
										</tr>
										<tr>
											<th>내용</th>
											<td><textarea name="notice_content" id="" class="content_table_item_content" rows="10"></textarea></td>
										</tr>
										<tr>
											<th>작성자</th>
											<td><input name="notice_author" value="관리자" class="author_table_item_content" readonly="readonly"/></td>
										</tr>
									</table>
									<div class="bottom_table">
										<input type="button" value="작성" class="write_btn" onclick="notice_insert(this.form);"/>
									</div>
								</form>
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
<script type="text/javascript">
	function notice_insert(form) {
		// TODO ----------------- form data check ----------------
		// TODO ----------------- form data check ----------------
		form.submit();
	}
</script>
</html>