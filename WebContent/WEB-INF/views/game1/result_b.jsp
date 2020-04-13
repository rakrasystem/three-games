<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
    <c:import url="/WEB-INF/views/layout/game1_result.jsp" />

    <div class="right">
      <div class="character-right">
        <img class="player" src="/image/guide01.png" alt="ナディア">
      </div>
      <div class="message-right">
        <div class="name-frame">
          <p>ナディア</p>
        </div>
        <div class="message-frame">
          <p>メリッサの宣言した方向は${gm1.melissa }だよ。</p>
          <p>あなたの宣言した方向も……${player }だね。</p>
          <p>残念！メリッサに宣言をあてられちゃったよ～</p>
          <p>うわ～！メリッサにカウントを２つ取られちゃったよ！</p>
          <p>このゲームはあなたの負けだね。がっくり。</p>
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
            <p>やったわ、私の宣言があたったわね！</p>
            <p>とうとうカウントを2つ取ったわ！</p>
            <p>このゲームは、私の勝ちね。</p>
            <p>でも、気を落とさないで。あなたはとても強かったわ。</p>
            <p>ただ……今回はちょっとだけ、私の運が良かったみたい。</p>
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
              <p>残念だが負けてしまった……</p>
              <p>くやしいけど、メリッサの勝利だ。</p>
              <br>
              <br>
            </div>
          </div>
        </div>
        <br>

    </c:param>
</c:import>
