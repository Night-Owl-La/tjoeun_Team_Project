<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>??? - 고객센터</title>

    <!-- 부트스트랩 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <!-- CSS 초기화 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/w_init.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/customer_center.css">
    <!-- 웹 폰트 -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:199,300,400,500,700,900&subset=korean">
</head>

<body>
    <div id="wrap">
        <!-- header -->
        <header id="header">
            <h1 hidden>고객센터</h1>
            <div class="inner_header">
                <!-- 네비게이션 바 -->
                <div id="navigation_Bar">
                    <a href="${pageContext.request.contextPath}/customer_center/customer_main.do"><img src="${pageContext.request.contextPath}/resources/images/customer_center_images/logo.png" alt="Logo"></a>
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
            <div class="title_header_main">
                <a href="${pageContext.request.contextPath}/customer_center/customer_main.do"><span class="image_title_header_main"></span></a>
                <a href=""><span class="text_title_header_main">Customer Center</span></a>
            </div>
            <!-- banner -->
            <section id="banner">
                <div class="menu_banner">
                    <div class="item_banner">
                        <a href="${pageContext.request.contextPath}/customer_center/customer_center.do?selectPage=notice&page=1" class="link_item_banner">
                            <img src="${pageContext.request.contextPath}/resources/images/customer_center_images/search.png" alt="고객센터 공지사항">
                        </a>
                        <div class="title_item_banner">공지사항</div>
                    </div>
                    <div class="item_banner">
                        <a href="${pageContext.request.contextPath}/resources/layout/faq_page.html" class="link_item_banner">
                            <img src="${pageContext.request.contextPath}/resources/images/customer_center_images/FAQ.png" alt="고객센터 FAQ">
                        </a>
                        <div class="title_item_banner">FAQ</div>
                    </div>
                    <div class="item_banner">
                        <a href="${pageContext.request.contextPath}/resources/layout/1by1_page.html" class="link_item_banner">
                            <img src="${pageContext.request.contextPath}/resources/images/customer_center_images/1by1.png" alt="고객센터 1:1 문의">
                        </a>
                        <div class="title_item_banner">1:1 문의</div>
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
                                    <h2></h2>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!-- footer -->
        <footer id="footer">
            <span class="text_footer">footer</span>
        </footer>
    </div>

</body></html>