<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>あっちむいてほい</h1>
        <br /><br/>

        <div class="left">
          <div class="character-left">
            <img  class="enemy" src="<c:url value='/image/game1.png' />" alt="メリッサ">
          </div>
          <div class="message-left">
            <div class="name-frame">
              <p>メリッサ  :  カウント ${gm1.melissaCount}</p>
            </div>
            <div class="message-frame">
              <br>
              <p>${gm1.melissa }</p>
              <br>
              <br>
              <br>
            </div>
          </div>
        </div>
        <br>

        <div class="right">
          <div class="character-right">
            <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
          </div>
          <div class="message-right">
            <div class="name-frame">
              <p>${sessionScope.login_player.name}  :  カウント ${gm1.count }</p>
            </div>
            <div class="message-frame">
              <br>
              <p>${gm1.player} </p>
              <br>
              <br>
            </div>
          </div>
        </div>
        <br>
