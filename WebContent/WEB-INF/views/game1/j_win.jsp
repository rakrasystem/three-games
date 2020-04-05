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
                        <p>あなたの出した手は${gm1.player }だね。</p>
                        <p>やった！あなたの勝ちだよ！</p>
                        <p>次は宣言される方向を当てて、カウントゲットだよ！</p>
                        <br />
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.png' />" alt="メリッサ">
            </div>
            <br />

            <div class="left">
                <img  class="enemy" src="<c:url value='/image/game1.png' />" alt="メリッサ">
                <div class="message">
                    <div class="name-frame">
                        <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
                    </div>
                    <div class="message-frame">
                        <p>負けちゃった…</p>
                        <p>でもまだ、カウントを取ったわけじゃないわよ。</p>
                        <p>次も勝てないと、意味がないんだから。</p>
                        <br />
                        <br />
                    </div>
                </div>
            </div>
            <br />

            <c:import url="/WEB-INF/views/layout/game1_call.jsp" />

    </c:param>
</c:import>