<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>フィンガースマッシュ</h1>
        <br>
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
                <br>
                <p>立てた指の数 : ${sm.cpuHand} </p>
                <br>
                <br>
                <br>
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
                  <br />
                  <p>立てた指の数 : ${sm.playerHand} </p>
                  <p>宣言した数   : ${sm.playerCall }</p>
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
                    <p>合計の数は ${allhand } で、あなたの宣言した数は ${sm.playerCall } だから……</p>
                    <p>やった！あなたの宣言があたったよ！</p>
                    <p>ユニットが全部なくなったよ！あなたの勝ちだよ！</p>
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
                      <p>ああーっ！うそー！？あ、当てられちゃった！？</p>
                      <p>あなたのユニットが全部なくなったから……</p>
                      <p>わ、私の負けだね……</p>
                      <p>すごいなぁ、あなたとっても強いんだね！</p>
                      <br>
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
                        <p>やった！ユニットが全部なくなった！</p>
                        <p>テティスとの勝負に勝った。</p>
                        <br />
                        <br />
                      </div>
                    </div>
                  </div>
                  <br>
    </c:param>
</c:import>
