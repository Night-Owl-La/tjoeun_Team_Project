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

            
        <!-- footer -->
        <footer id="footer">
            <span class="text_footer">footer</span>
        </footer>
    </div>

</body></html>