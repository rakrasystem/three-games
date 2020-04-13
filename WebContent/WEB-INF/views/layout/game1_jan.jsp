<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="right">
  <div class="character-right">
    <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
  </div>
  <div class="message-right">
    <div class="name-frame">
    <p>${sessionScope.login_player.name}  :  カウント ${gm1.count }</p>
    </div>
    <div class="message-frame">
      <p>なにを出そうかな……？</p>
      <form name="stone" method="POST" action="<c:url value='/game1/janken' />">
          <input type="hidden" name="hand" value="0">
          <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
          <input type="hidden" name="count" value="${gm1.count }">
          <a href="javascript:stone.submit()">グーを出す</a>
      </form>
      <form name="scissors" method="POST" action="<c:url value='/game1/janken' />">
          <input type="hidden" name="hand" value="1">
          <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
          <input type="hidden" name="count" value="${gm1.count }">
          <a href="javascript:scissors.submit()">チョキを出す</a>
      </form>
      <form name="paper" method="POST" action="<c:url value='/game1/janken' />">
          <input type="hidden" name="hand" value="2">
          <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
          <input type="hidden" name="count" value="${gm1.count }">
          <a href="javascript:paper.submit()">パーを出す</a>
      </form>
    </div>
  </div>
</div>
<br>
