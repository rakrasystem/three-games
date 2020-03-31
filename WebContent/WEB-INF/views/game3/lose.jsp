<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>ハンドウォーズ</h1>
        <br /><br/>

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game3.jpeg' />" alt="アテナ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>アテナ  :  パワー ${athenaP}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p> ${athena_hand} </p>
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
                        <p>${sessionScope.login_player.name}  :  パワー ${playerP }  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p> ${player_hand} </p>
                        <br />
                        <br />
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
                        <p>アテナのアクションは ${athena_hand} だよ。</p>
                        <p>あなたのアクションは ${player_hand }だね。</p>
                        <p>結果は……ううっ、あなたの負けだね。</p>
                        <p>残念だけど……こういう日もあるよね。</p>
                        <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game3.jpeg' />" alt="アテナ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>アテナ</p>
                    </div>
                    <div class="message-frame">
                        <p>あら……私の勝ち、ね。</p>
                        <p>ビギナーズラック、かしら。</p>
                        <p>もう1回やったら、次は勝てなさそうだもの。</p>
                        <p>あなた、とってもゲームがうまいのね。</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name} </p>
                    </div>
                    <div class="message-frame">
                        <p>アテナからのアタックがヒットしてしまった。</p>
                        <p>くやしいけど、アテナの勝ちだ。<p>
                        <br />
                        <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>