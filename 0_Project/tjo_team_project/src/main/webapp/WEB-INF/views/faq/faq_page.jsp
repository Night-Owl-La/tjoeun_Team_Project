<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>??? - 고객센터</title>

    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- CSS 초기화 -->
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/w_init.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/common.css">
	<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/customer_center.css">
    <!-- 웹 폰트 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:199,300,400,500,700,900&subset=korean">
</head>

<body>
    <h1 hidden>FAQ</h1>
    <!-- header -->
    <header>
        <div class="container">
            <div class="row">
                <!-- 네비게이션 바 -->
                <div id="navigation_Bar">
                    <a href="../layout/front_customer_page.html"><img src="${ pageContext.request.contextPath }/resources/images/customer_center_images/logo.png" alt="Logo"></a>
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
        </div>
    </header>

     <!-- banner -->
    <section id="banner">
        <div class="banner_menu">
            <div class="container">
                <div class="row">
                    <div class="banner_item">
                        <a onclick="location.href='${ pageContext.request.contextPath }/notice/notice.do'; return false;" href="">
                            <img src="${ pageContext.request.contextPath }/resources/images/customer_center_images/search.png" alt="고객센터 공지사항">
                        </a>
                        <div>공지사항</div>
                    </div>
                    <div class="banner_item">
                        <a onclick="location.href='${ pageContext.request.contextPath }/faq/faq.do'; return false;" href="">
                            <img src="${ pageContext.request.contextPath }/resources/images/customer_center_images/FAQ.png" alt="고객센터 FAQ">
                        </a>
                        <div>FAQ</div>
                    </div>
                    <div class="banner_item">
                        <a onclick="location.href='${ pageContext.request.contextPath }/oneby/oneby.do?user_idx=0'; return false;" href="">
                            <img src="${ pageContext.request.contextPath }/resources/images/customer_center_images/1by1.png" alt="고객센터 1:1 문의">
                        </a>
                        <div>1:1 문의</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <!-- content -->
    <section id="content">
        <div class="content_menu">
            <div class="container">
                <div class="row">
                    <!-- 고객 서비스 -->
                    <div class="content_item">
                        <a href="#">
                            <h2>FAQ</h2>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- content -->
    <section id="content">
        <div class="content_menu">
            <div class="container">
                <div class="row">
                    <!-- 고객 서비스 -->
                    <div class="content_item">
                    	<c:if test="${ empty faqList }">
                        	작성된 자주찾는 질문이 없습니다.
                        </c:if>
                        <c:if test="${ not empty faqList }">
	                        <table id="notice_Table" class="table table-bordered table-hover">
	                           <caption hidden>자주찾는 질문</caption>
	                            <tbody>
	                                <tr>
	                                    <th width="10%">No</th>
	                                    <th width="15%">Category</th>
	                                    <th width="60%">Title</th>
	                                    <th width="15%">View Count</th>
	                                </tr>
	
	                                <!-- test temp data-->
	                                <c:forEach var="faq" items="${ faqList }">
		                                <tr>
		                                    <td>${ faq.faq_idx }</td>
		                                    <td>${ faq.faq_category }</td>
		                                    <td>${ faq.faq_title }</td>
		                                    <td>${ faq.faq_view_count }</td>
		                                </tr>
									</c:forEach>
	                            </tbody>
	                        </table>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="content2">
        <div class="content2_menu">
            <div class="container">
                <div class="row">
                    <div class="content2_item">
                        <a href="#">
                            <div>EMPTY</div>
                            <!-- 임시 메시지-->
                            <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur amet laudantium ipsum modi. Dicta porro, dolore, omnis voluptatem assumenda similique aliquid inventore adipisci expedita nisi quis odit, maiores corrupti! Molestiae saepe, fugiat ipsam assumenda debitis nemo dicta numquam voluptates, vitae nostrum mollitia iste aperiam distinctio neque. Sequi magni officiis reiciendis adipisci. Deleniti cumque voluptatem doloribus provident voluptatibus nesciunt itaque hic, cum veniam quaerat ullam, esse qui eaque, consequatur. Cumque velit, architecto perspiciatis quas omnis nemo, quis et est, ab voluptatibus pariatur consequuntur tempora excepturi! Soluta numquam modi asperiores expedita. Impedit non optio perferendis delectus, quidem distinctio aliquam molestias quas velit omnis, dolorem culpa cumque deleniti vero sunt ex est excepturi. Nam inventore adipisci ea dolorem molestias vel aperiam provident illum, explicabo consequatur libero, quos enim vitae repellat pariatur officia. Facere delectus pariatur quisquam officia fugit voluptatum vitae nobis beatae suscipit laborum cupiditate optio, ipsum nesciunt reiciendis illum sunt, aliquam molestias fugiat quibusdam. Aut blanditiis consequatur ad totam aliquam fugit, eum quod odit similique! At nobis facilis est beatae impedit harum aspernatur suscipit sapiente, temporibus quam reprehenderit ex excepturi eaque veniam placeat cumque eius expedita repudiandae alias nulla, aut, perspiciatis maxime possimus doloribus. Suscipit, voluptatem magni eaque similique, non incidunt facere.</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- footer -->
    <footer>

    </footer>

</body></html>