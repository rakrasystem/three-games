<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>${sessionScope.login_player.name}  :  カウント ${gm1.count }</p>
                    </div>
                    <div class="message-frame">
                        <p>どの方向を宣言しようかな……</p>
                        <form name="up" method="POST" action="<c:url value='/game1/direction' />">
                            <input type="hidden" name="hand" value="0">
                            <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
                            <input type="hidden" name="count" value="${gm1.count }">
                            <input type="hidden" name="turn" value="0">
                            <a href="javascript:up.submit()">上を宣言する</a>
                        </form>
                        <form name="right" method="POST" action="<c:url value='/game1/direction' />">
                            <input type="hidden" name="hand" value="1">
                            <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
                            <input type="hidden" name="count" value="${gm1.count }">
                            <input type="hidden" name="turn" value="0">
                            <a href="javascript:right.submit()">右を宣言する</a>
                        </form>
                        <form name="left" method="POST" action="<c:url value='/game1/direction' />">
                            <input type="hidden" name="hand" value="2">
                            <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
                            <input type="hidden" name="count" value="${gm1.count }">
                            <input type="hidden" name="turn" value="0">
                            <a href="javascript:left.submit()">左を宣言する</a>
                        </form>
                        <form name="down" method="POST" action="<c:url value='/game1/direction' />">
                            <input type="hidden" name="hand" value="3">
                            <input type="hidden" name="melissaCount" value="${gm1.melissaCount }">
                            <input type="hidden" name="count" value="${gm1.count }">
                            <input type="hidden" name="turn" value="0">
                            <a href="javascript:down.submit()">下を宣言する</a>
                        </form>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/player01.png' />" alt="プレイヤー">
            </div>
            <br />
