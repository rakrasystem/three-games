<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1> ${sessionScope.login_player.name} さんの戦績</h1>
        <br />
        <br />
        <div class="left">
          <div class="character-left">
            <img  class="enemy" src="<c:url value='/image/game1.png' />" alt="メリッサ">
          </div>
          <div class="message-left">
            <div class="name-frame">
              <p>メリッサ</p>
            </div>
            <div class="message-frame">
              <p>あっちむいてほいの戦績よ。</p>
              <p>勝った回数 : ${e.game1_win} </p>
              <p>負けた回数 : ${e.game1_lose} </p>
              <br />
              <p>また私と遊んでね。</p>
            </div>
          </div>
        </div>
        <br>

        <div class="right">
          <div class="character-right">
            <img class="player" src="<c:url value='/image/game2.png' />" alt="テティス">
          </div>
          <div class="message-right">
            <div class="name-frame">
              <p>テティス</p>
            </div>
            <div class="message-frame">
              <p>フィンガースマッシュの戦績だよ。</p>
              <p>勝った回数 : ${e.game2_win} </p>
              <p>負けた回数 : ${e.game2_lose} </p>
              <br>
              <p>わたしはいつでも相手になるよ！</p>
            </div>
          </div>
        </div>
        <br>

        <div class="left">
          <div class="character-left">
            <img  class="enemy" src="<c:url value='/image/game3.png' />" alt="アテナ">
          </div>
          <div class="message-left">
            <div class="name-frame">
              <p>アテナ</p>
            </div>
            <div class="message-frame">
              <p>ハンドウォーズの戦績よ。</p>
              <p>勝った回数 : ${e.game3_win} </p>
              <p>負けた回数 : ${e.game3_lose} </p>
              <br>
              <p>私、ちゃんと相手になってるのかしら？</p>
            </div>
          </div>
        </div>
        <br>

        <div class="right">
          <div class="character-right">
            <img class="player" src="<c:url value='/image/guide01.png' />" alt="ナディア">
          </div>
          <div class="message-right">
            <div class="name-frame">
              <p>ナディア</p>
            </div>
            <div class="message-frame">
              <p>あなたの戦績はどうだったかな？</p>
              <p>みんなに勝ち越せるよう頑張ってね！</p>
              <br>
              <a href="<c:url value='/' />">トップページに戻るならここだよ。</a>
              <br>
            </div>
          </div>
        </div>
        <br>

    </c:param>
</c:import>
