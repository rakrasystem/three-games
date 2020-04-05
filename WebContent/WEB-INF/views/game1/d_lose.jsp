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
                        <p>あなたの宣言した方向も……${gm1.player }だね。</p>
                        <p>残念！メリッサに宣言をあてられちゃったよ～</p>
                        <p>でも、１カウントしか取られてないよ。</p>
                        <p>もう後がないけど、ここから逆転だよ！</p>
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
                        <p>やったわ、私の宣言があたったわね！</p>
                        <p>これでカウントを１つ取ったわ。</p>
                        <p>私の勝ちまで、あと残り１つね…</p>
                        <p>あなたには悪いけど、このまま勝たせてもらうわよ。</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <c:import url="/WEB-INF/views/layout/game1_call.jsp" />

    </c:param>
</c:import>