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
          <p>あなたの宣言した方向は${gm1.player }だね。</p>
          <p>やった、はずれだね！よかった～。</p>
          <p>メリッサにカウントは取られなかったよ。</p>
          <p>さ、つぎのじゃんけんは、がんばろ！</p>
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
            <p>あーあ、はずれね。</p>
            <p>うまく宣言を外してくれたわね。</p>
            <p>でも、勝負はまだまだこれからよ。</p>
            <p>さあ、つぎのじゃんけんも負けないわよ。</p>
            <br>
            <br>
          </div>
        </div>
      </div>
      <br>

            <c:import url="/WEB-INF/views/layout/game1_jan.jsp" />

    </c:param>
</c:import>
