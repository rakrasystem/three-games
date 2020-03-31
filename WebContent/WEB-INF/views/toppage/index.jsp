<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
    <br />
    <br />
    <br />
     <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>こんにちは！ ${sessionScope.login_player.name}&nbsp;さん。</p>
                        <p>私の名前はナディア。よろしくね。</p>
                        <p>このサイトでは、かんたんな3つのゲームで遊べるよ。<p>
                        <p>上のメニューか、みんなとの会話から、ゲームができるよ。</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

        <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game1.jpeg' />" alt="メリッサ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>メリッサ</p>
                    </div>
                    <div class="message-frame">
                        <p>私は、「あっちむいてほい」で遊んでほしいわ。</p>
                        <p>時間はあるかしら？</p>
                        <br />
                        <a href="<c:url value='/game1/top' />">ここから私の部屋に来てね。</a>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>テティス</p>
                    </div>
                    <div class="message-frame">
                        <p>わたしと、「フィンガースマッシュ」しようよ！</p>
                        <p>ねえねえ、はやく遊ぼうよ～</p>
                        <br />
                        <a href="<c:url value='/game2/top' />">こっちに来てよね！</a>
                        <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/game2.jpeg' />" alt="テティス">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game3.jpeg' />" alt="アテナ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>アテナ</p>
                    </div>
                    <div class="message-frame">
                        <p>私、「ハンドウォーズ」のルールを覚えたの。</p>
                        <p>さっそく、やってみたいんだけど…… </p>
                        <br />
                        <a href="<c:url value='/game3/top' />">こっちで準備しているから、いつでもきてね。</a>
                    </div>
                </div>
            </div>
            <br />

    </c:param>
</c:import>