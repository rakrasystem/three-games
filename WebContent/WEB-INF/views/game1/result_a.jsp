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
                        <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>${gm1.melissa }</p>
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
                        <p>${sessionScope.login_player.name}  :  カウント ${gm1.count - 1 }</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>${gm1.player} </p>
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
                        <p>メリッサの宣言した方向は${gm1.melissa }だよ。</p>
                        <p>あなたの宣言した方向も${gm1.player }だね。</p>
                        <p>やった！あなたの宣言があたったよ！</p>
                        <p>メリッサからカウントを2つ取ったよ！</p>
                        <p>やったあ！このゲームはあなたの勝ちだよ！おめでとう！</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ガイド">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game1.jpeg' />" alt="メリッサ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
                    </div>
                    <div class="message-frame">
                        <p>カウントを2つ取られちゃった…</p>
                        <p>このゲームは私の負けね。</p>
                        <p>おめでとう、 ${sessionScope.login_player.name} さん。</p>
                        <p>とっても楽しいゲームだったわ。</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  カウント ${gm1.count }</p>
                    </div>
                    <div class="message-frame">
                        <p>やった。メリッサに勝利した！</p>
                        <p></p>
                        <p></p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>