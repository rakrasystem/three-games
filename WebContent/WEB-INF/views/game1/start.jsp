<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>あっちむいてほい</h1>
        <br /><br/>
            <div class="game1-left">
                <img  class="g1-enemy" src="<c:url value='/image/game1.jpeg' />" alt="メリッサ">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>メリッサ</p>
                    </div>
                    <div class="message-frame">
                        <p>あなたが相手かしら？</p>
                        <p>私の名前はメリッサ。よろしくね。</p>
                        <p>それほど慣れてないから、お手柔らかにね。</p>
                        <p>短い時間かもしれないけど、楽しい時間にしましょう。</p>
                        <br />
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
                        <p>あっちむいてほいの相手はメリッサだよ。</p>
                        <p>メリッサは紅茶が好きで、たくさん茶葉を持ってるんだって。</p>
                        <p>勝ったらごちそうしてくれないかな？頑張って勝とうね！</p>
                        <p>それじゃあ、さっそくはじめよっか。</p>
                        <p>じゃーんけーん……</p>
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="game1-right">
                <div class="g1-message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name }</p>
                    </div>
                    <div class="message-frame">
                        <p>なにを出そうかな……？</p>
                        <form name="stone" method="POST" action="<c:url value='/game1/janken' />">
                            <input type="hidden" name="hand" value="0">
                            <a href="javascript:stone.submit()">グーを出す</a>
                        </form>
                        <form name="scissors" method="POST" action="<c:url value='/game1/janken' />">
                            <input type="hidden" name="hand" value="1">
                            <a href="javascript:scissors.submit()">チョキを出す</a>
                        </form>
                        <form name="paper" method="POST" action="<c:url value='/game1/janken' />">
                            <input type="hidden" name="hand" value="2">
                            <a href="javascript:paper.submit()">パーを出す</a>
                        </form>
                        <br />
                    </div>
                </div>
                <img class="g1-player" src="<c:url value='/image/player01.jpeg' />" alt="プレイヤー">
            </div>
    </c:param>
</c:import>