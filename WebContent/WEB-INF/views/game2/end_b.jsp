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

            <div class="right">
              <div class="character-right">
                <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
              </div>
              <div class="message-right">
                <div class="name-frame">
                  <p>${sessionScope.login_player.name}  :  ユニット数 ${sm.playerUnit}  </p>
                </div>
                <div class="message-frame">
                  <br>
                  <p>立てた指の数 : ${sm.playerHand} </p>
                  <br>
                  <br>
                </div>
              </div>
            </div>
            <br>

            <div class="right">
              <div class="character-right">
                <img class="player" src="image/guide01.png" alt="ナディア">
              </div>
              <div class="message-right">
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
            </div>
            <br>

            <div class="left">
              <div class="character-left">
                <img  class="enemy" src="<c:url value='/image/game2.png' />" alt="テティス">
              </div>
              <div class="message-left">
                <div class="name-frame">
                  <p>テティス  :  ユニット数 ${sm.cpuUnit}</p>
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
            <br>

            <div class="right">
              <div class="character-right">
                <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
              </div>
              <div class="message-right">
                <div class="name-frame">
                  <p>${sessionScope.login_player.name}  :  ユニット数 ${sm.playerUnit}  </p>
                </div>
                <div class="message-frame">
                  <p>テティスのユニットが全部なくなってしまった。</p>
                  <p>残念だけど負けてしまった……</p>
                  <br>
                  <br>
                </div>
              </div>
            </div>
            <br>

    </c:param>
</c:import>
