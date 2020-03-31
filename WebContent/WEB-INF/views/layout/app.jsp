<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ja">
    <head>
        <meta charset="UTF-8">
        <title>Three Games!</title>
        <meta name="description" content="楽しい3つのゲームで遊べるサイトです。">
        <link rel="stylesheet" href="<c:url value='/css/reset.css' />">
        <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    </head>

    <body>
        <header class="page-header wrapper">
            <h1><a href="<c:url value='/' />">Three Games!</a></h1>
            <c:if test="${sessionScope.login_player != null}">
                <nav>
                    <ul class="main-nav">
                        <li>${sessionScope.login_player.name}&nbsp;さん</li>
                        <li><a href="<c:url value='/game1/top' />">あっちむいてほい</a></li>
                        <li><a href="<c:url value='/game2/top' />">フィンガースマッシュ</a></li>
                        <li><a href="<c:url value='/game3/top' />">ハンドウォーズ</a></li>
                            <c:if test="${sessionScope.login_player.name != 'ゲスト' }">
                                <li><a href="<c:url value='/resultpage' />">今までの戦績</a></li>
                            </c:if>
                        <li><a href="<c:url value='/logout' />">ログアウト</a></li>
                    </ul>
                </nav>
            </c:if>
        </header>

        <div class="home-content wrapper">
            <div id="content">
                ${param.content}
            </div>
        </div>

        <footer class="page-footer wrapper">
        <br /><br/>
        <p>--------------------------------------------------------------------------------</p>
        <p>by Rakra System</p>.
        </footer>

    </body>
</html>