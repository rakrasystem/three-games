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
                        <p>メリッサの出した手は${gm1.melissa }だよ。</p>
                        <p>あなたの出した手も${gm1.player }だね。</p>
                        <p>う～ん、あいこだね。</p>
                        <p>まずじゃんけんに勝たないとね。</p>
                        <p>さ、あーいこーで……</p>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.jpeg' />" alt="ナディア">
            </div>
            <br />

            <div class="eft">
                <img  class="enemy" src="<c:url value='/image/game1.jpeg' />" alt="メリッサ">
                <div class="message">
                    <div class="name-frame">
                        <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
                    </div>
                    <div class="message-frame">
                        <p>あいこね。</p>
                        <p>とりあえず、負けなくてよかったわ。</p>
                        <p>次はなにを出そうかしら。</p>
                        <p>あなたは今、 ${gm1.player } を出したから……</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <c:import url="/WEB-INF/views/layout/game1_jan.jsp" />

    </c:param>
</c:import>