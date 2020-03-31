<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
     <c:if test="${hasError}">
            <div id="flush_error">
                名前かパスワードが間違っています。
            </div>
     </c:if>

    <h2>ログイン</h2>
        <form method="POST" action="<c:url value='/login' />">
            <label for="name">名前</label><br />
            <input type="text" name="name" value="${name}" />
            <br /><br />

            <label for="password">パスワード</label><br />
            <input type="password" name="password" />
            <br /><br />

            <input type="hidden" name="_token" value="${_token}" />
            <button type="submit">ログイン</button>
        </form>

        <div id="newentrant">
            <a href="<c:url value='/new' />">新しいプレイヤーを登録する</a>
        </div>
        <form name="gest" method="POST" action="<c:url value='/login' />">
            <input type="hidden" name="name" value="ゲスト">
            <input type="hidden" name="password" value="guest" >
            <a href="javascript:gest.submit()">ゲストでログインする</a>
        </form>
        <p>ゲストでログインすると、戦績の登録は行われません</p>
    </c:param>
</c:import>