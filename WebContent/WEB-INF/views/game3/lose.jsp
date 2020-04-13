<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>ハンドウォーズ</h1>
        <br /><br/>

        <div class="left">
          <div class="character-left">
            <img  class="enemy" src="<c:url value='/image/game3.png' />" alt="アテナ">
          </div>
          <div class="message-left">
            <div class="name-frame">
              <p>アテナ  :  パワー ${gm3.athenaP}</p>
            </div>
            <div class="message-frame">
              <br />
              <p> ${gm3.athena_hand} </p>
              <br />
              <br />
              <br />
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
                <p>${sessionScope.login_player.name}  :  パワー ${gm3.playerP }  </p>
              </div>
              <div class="message-frame">
                <br>
                <p> ${gm3.player_hand} </p>
                <br>
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
                  <p>アテナのアクションは ${gm3.athena_hand} だよ。</p>
                  <p>あなたのアクションは ${gm3.player_hand }だね。</p>
                  <p>結果は……ううっ、あなたの負けだね。</p>
                  <p>残念だけど……こういう日もあるよね。</p>
                  <br>
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
                    <p>アテナ  :  パワー ${gm3.athenaP}</p>
                  </div>
                  <div class="message-frame">
                    <p>あら……私の勝ち、ね。</p>
                    <p>ビギナーズラック、かしら。</p>
                    <p>もう1回やったら、次は勝てなさそうだもの。</p>
                    <p>あなた、とってもゲームがうまいのね。</p>
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
                      <p>${sessionScope.login_player.name}  :  パワー ${gm3.playerP }  </p>
                    </div>
                    <div class="message-frame">
                      <p>アテナからのアタックがヒットしてしまった。</p>
                      <p>くやしいけど、アテナの勝ちだ。<p>
                      <br>
                      <br>
                    </div>
                  </div>
                </div>
                <br>

    </c:param>
</c:import>
