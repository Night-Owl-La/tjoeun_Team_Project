<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>공지사항 - 고객센터</title>

    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- CSS 초기화 -->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/w_init.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/common.css">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/faq.css">
    <!-- 웹 폰트 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:199,300,400,500,700,900&subset=korean">
</head>

<body>
    <div id="wrap">
        <!-- header -->
        <header id="header">
            <h1 hidden>자주찾는질문</h1>
            <div class="inner_header">
                <!-- 네비게이션 바 -->
                <div id="navigation_Bar">
                    <a href="#"><img src="${ pageContext.request.contextPath }/resources/images/customer_center_images/logo.png" alt="Logo"></a>
                    <span>Navigation Bar</span>
                    <nav>
                        <ul class="clearfix">
                            <li>목록</li>
                            <li>1</li>
                            <li>2</li>
                            <li>3</li>
                            <li>4</li>
                        </ul>
                    </nav>
                </div>
            </div>
        </header>

        <main id="wrap_main">
            <!-- header main-->
            <div class="title_header_main">
                <a href="#">
                    <span class="image_title_header_main"></span>
                </a>
            </div>

            <!-- inner_wrap main -->
            <div class="inner_wrap_main">

                <!-- nav -->
                <nav id="nav">
                    <div class="title_menu_nav">
                        <span class="text_title_menu_nav">Service</span>
                    </div>
                    <div class="menu_nav">
                        <ul class="list_menu_nav">
                            <li class="link_list_menu_nav"><a href="#" onclick="location.href='${ pageContext.request.contextPath }/notice/notice.do';">Notice</a></li>
                            <li class="link_list_menu_nav"><a href="#" onclick="location.href='${ pageContext.request.contextPath }/faq/faq.do';">FAQ</a></li>
                            <!-- TODO 1:1문의 로그인 체크 -->
                            <li class="link_list_menu_nav"><a href="#" onclick="location.href='${ pageContext.request.contextPath }/oneby/oneby.do';">1:1문의</a></li>
                        </ul>
                    </div>
                </nav>

                <!-- content -->
                <section id="content">
                    <article class="menu_content">
                        <!-- 고객 서비스 -->
                        <div class="item_content">
                            <div class="header_table">
                                <h2>
                                   <span class="title_header_table">Notice</span>
                                </h2>
                                <spna class="search_bar">
                                    <select name="search_option" id="search_option_faq" class="search_option_faq">
                                        <option value="title">제목</option>
                                        <option value="content">내용</option>
                                    </select>
                                    <input type="text" class="search_text_faq">
                                    <input type="button" value="검색" class="search_btn_faq">
                                </spna>
                            </div>
                            <c:if test="${ empty noticeList }">
                            	<span>작성된 공지사항이 없습니다.</span>
                            </c:if>
                            <c:if test="${ not empty noticeList }">
	                            <table class="table table-hover table_item_content">
	                                <tr>
	                                    <th>No</th>
	                                    <th>Title</th>
	                                    <th>Date</th>
	                                    <th>Author</th>
	                                </tr>
	                                <!-- sample data-->
	                                <c:forEach var="notice" items="${ noticeList }">
		                                <tr>
		                                	<td>${ notice.notice_idx }</td>
		                                	<td>
		                                		<a href="#" class="link_notice_title" onclick="location.href=$'notice_view.do?notice_idx='${ notice.notice_idx }; return false;">
		                                			<span>${ notice.notice_title }</span>
		                                		</a>
		                                	</td>
		                                	<td>${ notice.notice_regdate }</td>
		                                	<td>${ notice.notice_author }</td>
		                                </tr>
	                                </c:forEach>
	                            </table>
                            </c:if>
                        </div>
                        <!-- paging -->
                        <div class="paging_content">
                            <span>◀ &nbsp;&nbsp;1&nbsp;&nbsp; 2&nbsp;&nbsp; 3&nbsp;&nbsp; ▶</span>
                        </div>
                    </article>
                </section>
            </div>
        </main>
        <!-- footer -->
        <footer id="footer">
            <span class="text_footer">footer</span>
        </footer>
    </div>

</body></html>