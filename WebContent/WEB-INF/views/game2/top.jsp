<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>フィンガースマッシュ</h1>
        <h2>ルール説明</h2>
        <p>まず、親指が上に来るようなグーの形を想像してください。これを「ユニット」といいます。</p>
        <p>プレイヤー１人につき、この「ユニット」は両手分として2つ持っています。</p>
        <p>「ユニット」は親指を上げる・上げないによって、数を表現します。</p>
        <p>お互いのプレイヤーは、交互に「お互いの立てる指の数の合計」を予想し、宣言します。</p>
        <p>宣言するプレイヤーのことは、「攻撃側」のプレイヤーとも言います。
        <p>宣言があたった場合、攻撃側のプレイヤーはユニット1つ減らします。</p>
        <p>先にユニットがなくなったプレイヤーの勝利です。</p>
        <br>
        <br>

        <a href="<c:url value='/game2/start' />">ゲームを始める！</a>
        <a href="<c:url value='/' />">トップページへ戻る</a>
    </c:param>
</c:import>
