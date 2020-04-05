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
                        <p>残念……負けちゃったね……</p>
                        <p>でも、まだカウントを取られたわけじゃないよ。</p>
                        <p>うまくメリッサと違う方向を宣言しよう！</p>
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
                        <p>私の勝ちね。</p>
                        <p>この調子で、次の宣言も当てさせてもらうわ。</p>
                        <p>油断をしていると、このまま私が勝っちゃうわよ。</p>
                        <p>さて…どの方向にしようかしら？</p>
                        <br />
                    </div>
                </div>
            </div>
            <br />

             <c:import url="/WEB-INF/views/layout/game1_call.jsp" />

    </c:param>
</c:import>