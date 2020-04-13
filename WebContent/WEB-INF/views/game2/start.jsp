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
              <p>テティス</p>
            </div>
            <div class="message-frame">
              <p>こんにちは！待ってたよ！</p>
              <p>わたしはテティスっていうんだ。よろしくね！</p>
              <p>今日は遊びに来てくれてありがとう。</p>
              <p>ちょうどひまだったし、たくさん遊ぼうね！</p>
              <br>
            </div>
          </div>
        </div>
        <br>

          <div class="right">
            <div class="character-right">
              <img class="player" src="/image/guide01.png" alt="ナディア">
            </div>
            <div class="message-right">
              <div class="name-frame">
                <p>ナディア</p>
              </div>
              <div class="message-frame">
                <p>フィンガースマッシュの相手はテティスだよ。</p>
                <p>テティスは元気いっぱいなんだけど、インドア派なんだよ。</p>
                <p>あ、テティスがもう待ちきれないみたい。</p>
                <p>さっそくはじめよっか。あなたが先攻だよ。</p>
                <p>立てる指の数と、宣言する指の数を決めてね。</p>
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
                  <p>${sessionScope.login_player.name }</p>
                </div>
                <div class="message-frame">
                  <p>まずは立てる指の数を選ぼう。</p>
                      <form  name = "choice" method="POST" action="<c:url value='/game2/smash1st' />">
                          <select name="playerHand">
                              <option value="0">0本</option>
                              <option value="1">1本</option>
                              <option value="2">2本</option>
                          </select>
                  <p>次に宣言する数を決めよう。</p>
                          <select name="playerCall">
                              <option value="0">0</option>
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                          </select>
                          <input type="hidden" name="turn" value="0">
                          <br />
                          <a href="javascript:choice.submit()">決定！</a>
                      </form>
                </div>
              </div>
            </div>
            <br>

    </c:param>
</c:import>
