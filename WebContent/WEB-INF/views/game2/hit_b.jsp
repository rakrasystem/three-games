<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>フィンガースマッシュ</h1>
        <br /><br/>

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
              <p>宣言した数   : ${sm.cpuCall }</p>
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
                  <p>テティスの宣言があたっちゃったよ!</p>
                  <p>次はあなたが攻撃側だよ。この宣言を当てないとピンチだよ～。</p>
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
                    <p>やったあ！わたしの宣言があたったよ！</p>
                    <p>ふふん、予想通りだね！これで、ユニットは後1つだ！</p>
                    <p>次はあなたの攻撃の番だよ。</p>
                    <p>これを外せば、私の勝利は目の前だね。</p>
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
                      <p>${sessionScope.login_player.name}  :  ユニット数 ${sm.playerUnit}  </p>
                    </div>
                    <div class="message-frame">
                      <p>次はこちらが攻撃側だ。まずは立てる指の数を選ぼう。</p>
                          <form  name = "choice" method="POST" action="<c:url value='/game2/smash2nd' />">
                              <c:choose>
                                  <c:when test="${sm.playerUnit == 2 }">
                                      <select name="playerHand">
                                          <option value="0">0本</option>
                                          <option value="1">1本</option>
                                          <option value="2">2本</option>
                                      </select>
                                  </c:when>
                                  <c:otherwise>
                                      <select name="playerHand">
                                          <option value="0">0本</option>
                                          <option value="1">1本</option>
                                      </select>
                                  </c:otherwise>
                              </c:choose>
                      <p>次に宣言する数を決めよう。</p>
                              <c:choose>
                                  <c:when test="${(sm.playerUnit + sm.cpuUnit) == 3 }">
                                      <select name="playerCall">
                                          <option value="0">0</option>
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                          <option value="3">3</option>
                                      </select>
                                  </c:when>
                                  <c:otherwise>
                                      <select name="playerCall">
                                          <option value="0">0</option>
                                          <option value="1">1</option>
                                          <option value="2">2</option>
                                      </select>
                                  </c:otherwise>
                              </c:choose>
                              <input type="hidden" name="turn" value="0">
                              <input type="hidden" name="playerUnit" value= ${sm.playerUnit }>
                              <input type="hidden" name="cpuUnit" value=${sm.cpuUnit }>
                              <br />
                              <a href="javascript:choice.submit()">決定！</a>
                          </form>
                    </div>
                  </div>
                </div>
                <br>

    </c:param>
</c:import>
