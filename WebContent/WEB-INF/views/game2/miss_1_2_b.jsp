<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>フィンガースマッシュ</h1>
        <br /><br/>

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game2.jpeg' />" alt="テティス">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>テティス  :  ユニット数 ${sm.cpuUnit}</p>
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

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  ユニット数 ${sm.playerUnit }  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p>立てた指の数 : ${sm.playerHand} </p>
                        <br />
                        <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>テティスの立てた指の数は ${sm.cpuHand }だよ。</p>
                        <p>あなたの立てた指の数は ${sm.playerHand }だね。</p>
                        <p>合計の数は ${allhand } で、テティスの宣言した数は ${sm.cpuCall } だから……</p>
                        <p>よかった、テティスの宣言がはずれたよ！</p>
                        <p>次はあなたが攻撃側だよ。このままの勢いで勝っちゃおう！</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game2.jpeg' />" alt="テティス">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>テティス  :  ユニット ${sm.cpuUnit} </p>
                    </div>
                    <div class="message-frame">
                        <p>あー！外れちゃった……</p>
                        <p>絶対当てなきゃいけなかったのに～。</p>
                        <p>つぎはあなたが攻撃する番だね。</p>
                        <p>お願いだから、外してよ～。</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  ユニット ${sm.playerUnit }  </p>
                    </div>
                    <div class="message-frame">
                        <p>次はこちらの攻撃だ。</p>
                        <p>まずは立てる指の数を選ぼう。</p>
                            <form  name = "choice" method="POST" action="<c:url value='/game2/smash2nd' />">
                                <select name="playerHand">
                                    <option value="0">0本</option>
                                    <option value="1">1本</option>
                                </select>
                        <p>次に宣言する数を決めよう。</p>
                                <select name="playerCall">
                                    <option value="0">0</option>
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                </select>
                                <input type="hidden" name="turn" value="0">
                                <input type="hidden" name="playerUnit" value= ${sm.playerUnit }>
                                <input type="hidden" name="cpuUnit" value=${sm.cpuUnit }>
                                <br />
                                <a href="javascript:choice.submit()">決定！</a>
                            </form>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>