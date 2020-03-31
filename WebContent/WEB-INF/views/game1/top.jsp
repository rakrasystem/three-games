<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>あっちむいてほい</h1>
        <h2>ルール説明</h2>
        <p>まず、じゃんけんを行います。勝ったプレイヤーが攻撃側です。</p>
        <p>じゃんけんの後、お互いのプレイヤーは上下左右のどれかの向きを同時に宣言します。</p>
        <p>宣言した向きが互いに違った場合、引き分けとして再度じゃんけんから行います。</p>
        <p>宣言した向きが同じだった場合、攻撃側のプレイヤーの勝利となります。</p>
        <p>勝ったプレイヤーはカウントを１つ獲得します。</p>
        <p>先に2カウント先取したプレイヤーの勝利です。</p>
        <br /><br/>

        <a href="<c:url value='/game1/start' />">ゲームを始める！</a>
        <a href="<c:url value='/' />">トップページへ戻る</a>
    </c:param>
</c:import>