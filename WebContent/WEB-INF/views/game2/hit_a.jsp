<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>フィンガースマッシュ</h1>
        <br /><br/>

            <div class="left">
                <img  class="enemy" src="<c:url value='/image/game2.png' />" alt="テティス">
                <div class="message">
                    <div class="name-frame">
                        <p>テティス  :  ユニット数 ${sm.cpuUnit}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>立てた指の数 : ${sm.cpuHand} </p>
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
                        <p>${sessionScope.login_player.name}  :  ユニット数 ${sm.playerUnit  + 1}  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>立てた指の数 : ${sm.playerHand} </p>
                        <p>宣言した数   : ${sm.playerCall }</p>
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
                        <p>テティスの立てた指の数は ${sm.cpuHand }だよ。</p>
                        <p>あなたの立てた指の数は ${sm.playerHand }だね。</p>
                        <p>合計の数は ${allhand } で、あなたの宣言した数は ${sm.playerCall } だから……</p>
                        <p>やった！あなたの宣言があたったよ！ユニットが1つ減るよ。</p>
                        <p>次はテティスが攻撃側だよ。立てる指の数だけ選んでね！</p>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.png' />" alt="ナディア">
            </div>
            <br />

            <div class="left">
                <img  class="enemy" src="<c:url value='/image/game2.png' />" alt="テティス">
                <div class="message">
                    <div class="name-frame">
                        <p>テティス  :  ユニット ${sm.cpuUnit} </p>
                    </div>
                    <div class="message-frame">
                        <p>ええっ！？あ、当てられちゃった！？</p>
                        <p>うーん、もう次当てられたら負けちゃうよ～。</p>
                        <p>とりあえず、次の宣言を当てないと！</p>
                        <p>こまったなあ、どうしよっかな。</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  ユニット ${sm.playerUnit}  </p>
                    </div>
                    <div class="message-frame">
                        <p>やった！宣言があたった！ユニットの数が1つ減った。</p>
                        <p>次はテティスが攻撃側だ。立てる指の数を選ぼう。</p>
                            <form  name = "choice" method="POST" action="<c:url value='/game2/smash2nd' />">
                                <select name="playerHand">
                                    <option value="0">0本</option>
                                    <option value="1">1本</option>
                                </select>
                                <input type="hidden" name="turn" value="1">
                                <input type="hidden" name="playerUnit" value= ${sm.playerUnit }>
                                <input type="hidden" name="cpuUnit" value=${sm.cpuUnit }>
                                <br />
                                <a href="javascript:choice.submit()">決定！</a>
                            </form>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>