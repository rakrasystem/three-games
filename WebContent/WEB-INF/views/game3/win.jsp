<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>ハンドウォーズ</h1>
        <br /><br/>

            <div class="left">
                <img  class="enemy" src="<c:url value='/image/game3.png' />" alt="アテナ">
                <div class="message">
                    <div class="name-frame">
                        <p>アテナ  :  パワー ${gm3.athenaP}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p> ${gm3.athena_hand} </p>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  パワー ${gm3.playerP }  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p> ${gm3.player_hand} </p>
                        <br />
                        <br />
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
            </div>
            <br />

            <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>アテナのアクションは ${gm3.athena_hand} だよ。</p>
                        <p>あなたのアクションは ${gm3.player_hand }だね。</p>
                        <p>結果は……あなたの勝ちだね！</p>
                        <p>やったあ！アテナに勝ったよ！</p>
                        <p>おめでとう！</p>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.png' />" alt="ナディア">
            </div>
            <br />

            <div class="left">
                <img  class="enemy" src="<c:url value='/image/game3.png' />" alt="アテナ">
                <div class="message">
                    <div class="name-frame">
                        <p>アテナ</p>
                    </div>
                    <div class="message-frame">
                        <p>うまくアタックを決められちゃったわね。</p>
                        <p>この勝負、あなたの勝ちよ。</p>
                        <p>普段からゲームをしているの？</p>
                        <p>あなた、すごく強かったわ。</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name} </p>
                    </div>
                    <div class="message-frame">
                        <p>やった！アタックがヒットした！</p>
                        <p>アテナに勝利した。<p>
                        <br />
                        <br />
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>