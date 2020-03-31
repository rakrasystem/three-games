<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>あっちむいてほい</h1>
        <br /><br/>

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game1.jpeg' />" alt="メリッサ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>メリッサ  :  カウント ${melissaCount - 1}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>${melissa }</p>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  カウント ${count }  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>${player} </p>
                        <br /><br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>メリッサの宣言した方向は${melissa }だよ。</p>
                        <p>あなたの宣言した方向も……${player }だね。</p>
                        <p>残念！メリッサに宣言をあてられちゃったよ～</p>
                        <p>うわ～！メリッサにカウントを２つ取られちゃったよ！</p>
                        <p>このゲームはあなたの負けだね。がっくり。</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ガイド">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game1.jpeg' />" alt="メリッサ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>メリッサ  :  カウント ${melissaCount}</p>
                    </div>
                    <div class="message-frame">
                        <p>やったわ、私の宣言があたったわね！</p>
                        <p>とうとうカウントを2つ取ったわ！</p>
                        <p>このゲームは、私の勝ちね。</p>
                        <p>でも、気を落とさないで。あなたはとても強かったわ。</p>
                        <p>ただ……今回はちょっとだけ、私の運が良かったみたい。</p>
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  カウント ${count }  </p>
                    </div>
                    <div class="message-frame">
                          <p>残念だが負けてしまった……</p>
                          <p>くやしいけど、メリッサの勝利だ。</p>
                          <br />
                          <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>