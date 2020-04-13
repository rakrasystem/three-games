<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
    <c:import url="/WEB-INF/views/layout/game1_result.jsp" />

    <div class="right">
      <div class="character-right">
        <img class="player" src="image/guide01.png" alt="ナディア">
      </div>
      <div class="message-right">
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
    </div>
    <br>

      <div class="left">
        <div class="character-left">
          <img  class="enemy" src="<c:url value='/image/game1.png' />" alt="メリッサ">
        </div>
        <div class="message-left">
          <div class="name-frame">
            <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
          </div>
          <div class="message-frame">
            <p>カウントを2つ取られちゃった…</p>
            <p>このゲームは私の負けね。</p>
            <p>おめでとう、 ${sessionScope.login_player.name} さん。</p>
            <p>とっても楽しいゲームだったわ。</p>
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
              <p>${sessionScope.login_player.name}  :  カウント ${gm1.count }</p>
            </div>
            <div class="message-frame">
              <p>やった。メリッサに勝利した！</p>
              <p></p>
              <p></p>
            </div>
          </div>
        </div>
        <br>

    </c:param>
</c:import>
