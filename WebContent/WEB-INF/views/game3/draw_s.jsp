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
                        <p>うわあ、すごいね！</p>
                        <p>2人ともスペシャルだから引き分けだよ！</p>
                        <p>お互いのパワーがなくなったから、</p>
                        <p>特別ルールで、お互いのパワーが1つたまったよ。</p>
                        <p>次のアクションを選んでね！</p>

                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game3.jpeg' />" alt="アテナ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>アテナ  :  パワー ${athenaP + 1} </p>
                    </div>
                    <div class="message-frame">
                        <p>せっかくパワーをためたのに……</p>
                        <p>スペシャル同士で引き分けなんてね。</p>
                        <p>勝負がふりだしに戻っちゃったわね。</p>
                        <p>次はどうしようかしら……</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  パワー ${playerP + 1}  </p>
                    </div>
                    <div class="message-frame">
                        <p>結果は引き分けだった。次のアクションを選ぼう</p>
                            <form name="charge" method="GET" action="<c:url value='/game3/judge' />">
                                <input type="hidden" name="hand" value="0">
                                <a href="javascript:charge.submit()">チャージを選ぶ</a>
                            </form>
                            <form name="attack" method="GET" action="<c:url value='/game3/judge' />">
                                <input type="hidden" name="hand" value="2">
                                <a href="javascript:attack.submit()">アタックを選ぶ</a>
                            </form>
                            <form name="shield" method="GET" action="<c:url value='/game3/judge' />">
                                <input type="hidden" name="hand" value="1">
                                <a href="javascript:shield.submit()">シールドを選ぶ</a>
                            </form>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
            <br />

    </c:param>
</c:import>