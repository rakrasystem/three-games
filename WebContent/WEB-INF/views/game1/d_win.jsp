<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
    <c:import url="/WEB-INF/views/layout/game1_result.jsp" />

            <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>メリッサの宣言した方向は${gm1.melissa }だよ。</p>
                        <p>あなたの宣言した方向も${gm1.player }だね。</p>
                        <p>やった！あなたの宣言があたったよ！</p>
                        <p>カウントを１つ取ったよ！あと１つだね！</p>
                        <p>つぎも勝っちゃおう！</p>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.png' />" alt="ナディア">
            </div>
            <br />

            <div class="left">
                <img  class="enemy" src="<c:url value='/image/game1.png' />" alt="メリッサ">
                <div class="message">
                    <div class="name-frame">
                        <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
                    </div>
                    <div class="message-frame">
                        <p>うう…あてられちゃった…</p>
                        <p>カウントを取られちゃったか……</p>
                        <p>もう、あてられるわけにはいかないわね。がんばらないと。</p>
                        <p>つぎのじゃんけんから、気を引き締めていかないと</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <c:import url="/WEB-INF/views/layout/game1_call.jsp" />

    </c:param>
</c:import>