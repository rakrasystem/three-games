<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>ハンドウォーズ</h1>
        <br /><br/>

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game3.jpeg' />" alt="アテナ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>アテナ  :  パワー ${athenaP}</p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p> ${athena_hand} </p>
                        <br />
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  パワー ${playerP }  </p>
                    </div>
                    <div class="message-frame">
                        <br />
                        <p> ${player_hand} </p>
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
                        <p>アテナのアクションは ${athena_hand} だよ。</p>
                        <p>あなたのアクションは ${player_hand }だね。</p>
                        <p>結果は引き分けだね。</p>
                        <p>次のアクションを選んでね！</p>
                        <p>パワーが3たまると、スペシャルが使えるよ！</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game3.jpeg' />" alt="アテナ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>アテナ  :  パワー ${athenaP} </p>
                    </div>
                    <div class="message-frame">
                        <p>引き分けね。</p>
                        <p>あなたのチャージに、うまくアタックを合わせないと。</p>
                        <p>と、なるとパワーを切らすのはよくないかな。</p>
                        <p>パワーを貯めて、スペシャルを狙うのも……</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  パワー ${playerP}  </p>
                    </div>
                    <div class="message-frame">
                        <p>結果は引き分けだった。次のアクションを選ぼう。</p>
                            <form name="charge" method="POST" action="<c:url value='/game3/judge' />">
                                <input type="hidden" name="hand" value="0">
                                <input type="hidden" name="playerP" value= ${playerP }>
                                <input type="hidden" name="athenaP" value= ${athenaP }>
                                <a href="javascript:charge.submit()">チャージを選ぶ</a>
                            </form>
                            <c:choose>
                                <c:when test="${playerP > 0 }">
                                    <form name="attack" method="POST" action="<c:url value='/game3/judge' />">
                                        <input type="hidden" name="hand" value="2">
                                        <input type="hidden" name="playerP" value=${playerP }>
                                        <input type="hidden" name="athenaP" value=${athenaP }>
                                        <a href="javascript:attack.submit()">アタックを選ぶ</a>
                                    </form>
                                </c:when>
                            </c:choose>
                            <form name="shield" method="POST" action="<c:url value='/game3/judge' />">
                                <input type="hidden" name="hand" value="1">
                                <input type="hidden" name="playerP" value=${playerP }>
                                <input type="hidden" name="athenaP" value=${athenaP }>
                                <a href="javascript:shield.submit()">シールドを選ぶ</a>
                            </form>
                            <c:choose>
                                <c:when test="${playerP >= 3 }">
                                    <form name="special" method="POST" action="<c:url value='/game3/judge' />">
                                        <input type="hidden" name="hand" value="3">
                                        <input type="hidden" name="playerP" value="0">
                                        <input type="hidden" name="athenaP" value=${athenaP }>
                                        <a href="javascript:special.submit()">スペシャルを選ぶ</a>
                                    </form>
                                </c:when>
                         </c:choose>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>