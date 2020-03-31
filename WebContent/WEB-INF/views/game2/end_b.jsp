<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>フィンガースマッシュ</h1>
        <br /><br/>

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game2.jpeg' />" alt="テティス">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>テティス  :  ユニット数 ${sm.cpuUnit + 1}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>立てた指の数 : ${sm.cpuHand} </p>
                        <p>宣言した数   : ${sm.cpuCall }</p>
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  ユニット数 ${sm.playerUnit }  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>立てた指の数 : ${sm.playerHand} </p>
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
                        <p>テティスの立てた指の数は ${sm.cpuHand }だよ。</p>
                        <p>あなたの立てた指の数は ${sm.playerHand }だね。</p>
                        <p>合計の数は ${allhand } で、テティスの宣言した数は ${sm.cpuCall } だから……</p>
                        <p>テティスの宣言があたったちゃったよ!</p>
                        <p>ユニットが全部なくなったから、私達の負けだね。</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game2.jpeg' />" alt="テティス">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>テティス  :  ユニット ${sm.cpuUnit} </p>
                    </div>
                    <div class="message-frame">
                        <p>ユニットが全部なくなったよ！</p>
                        <p>と、言うことは……私の勝ちだね！</p>
                        <p>やった、嬉しいなあ！</p>
                        <p>遊んでくれて、どうもありがとう！</p>
                        <p>ねえねえ、もう1回やろうよ～</p>
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  ユニット ${sm.playerUnit }  </p>
                    </div>
                    <div class="message-frame">
                        <p>テティスのユニットが全部なくなってしまった。</p>
                        <p>残念だけど負けてしまった……</p>
                        <br />
                        <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>