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
                        <p>アテナ</p>
                    </div>
                    <div class="message-frame">
                        <p>はじめまして。来てくれてありがとう。</p>
                        <p>私の名前はアテナ。どうぞよろしくね。</p>
                        <p>私はあまりゲームをしないから、今日はとても楽しみなの。</p>
                        <p>あと、もし時間があったら私だけじゃなくて、</p>
                        <p>メリッサやテティスとも遊んであげてね。</p>
                    </div>
                </div>
            </div>

            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>ハンドウォーズの相手はアテナだよ。</p>
                        <p>アテナはお花が好きで、とっても詳しいんだよ。</p>
                        <p>まあ、ゲームの強さには関係しないけど……</p>
                        <p>それじゃあ、さっそくはじめよっか。</p>
                        <p>パワーは最初から、1つたまっているからね！</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name }  :  パワー １</p>
                    </div>
                    <div class="message-frame">
                        <p>どれにしようかな……？</p>
                        <form name="charge" method="POST" action="<c:url value='/game3/judge' />">
                            <input type="hidden" name="hand" value="0">
                            <a href="javascript:charge.submit()">チャージを選ぶ</a>
                        </form>
                        <form name="attack" method="POST" action="<c:url value='/game3/judge' />">
                            <input type="hidden" name="hand" value="2">
                            <a href="javascript:attack.submit()">アタックを選ぶ</a>
                        </form>
                        <form name="shield" method="POST" action="<c:url value='/game3/judge' />">
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