<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/WEB-INF/views/layout/app.jsp">
    <c:param name="content">
        <h1>ハンドウォーズ</h1>
        <h2>ルール説明</h2>
        <p>プレイヤーは同時に4種類の「アクション」のうち、1つを選択します。<p>
        <p>お互いの「アクション」の組み合わせによって、勝敗が決まります。</p>
        <p>相手が「チャージ」中に自分が「アタック」を行えば勝利です。</p>
        <p>逆に自分が「チャージ」中に相手に「アタック」をされると敗北です。</p>
        <p>「チャージ」と「チャージ」や、「アタック」と「アタック」など、</p>
        <p>同じアクションの場合や、「シールド」と「アタック」の組み合わせも引き分けです。</p>
        <p>また、「スペシャル」は使うのに条件がありますが、「スペシャル」以外のすべてに勝利します</p>
        <p>「スペシャル」同士の場合は引き分けです。</p>
        <br />
        <p>アクション一覧</p>
        <p>「チャージ」  ：パワーを1つためます。</p>
        <p>「アタック」  ：パワーを1つ消費して攻撃します。</p>
        <p>「シールド」  ：攻撃を防ぎます。パワーは変わりません。</p>
        <p>「スペシャル」：パワーが3以上のとき、すべてのパワーを使って使えます。</p>
        <br />
        <br />
        <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>Three Gamesだけの特別ルールがあるよ。</p>
                        <p>1.最初からお互いにパワーが１つたまっているよ。</p>
                        <p>パワーがないとアタックできないからね。</p>
                        <p>そうなると、最初はチャージで決まりだから、</p>
                        <p>もう開始からパワーを1つためてあるよ。</p>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.png' />" alt="ナディア">
            </div>
            <br />

            <div class="right">
                <div class="message">
                    <div class="name-frame">
                        <p>ナディア</p>
                    </div>
                    <div class="message-frame">
                        <p>2つ目の特別ルールだよ。</p>
                        <p>2.スペシャルで引き分けると、パワーが1つたまるよ。</p>
                        <p>これも、特別ルール1と同じ理由だよ。</p>
                        <p>お互いにパワーが0になっちゃうから、次のターンの</p>
                        <p>チャージの手間を省くためにパワーを1つためるよ。</p>
                    </div>
                </div>
                <img class="player" src="<c:url value='/image/guide01.png' />" alt="ナディア">
            </div>
            <br />



        <br /><br/>

        <a href="<c:url value='/game3/start' />">ゲームを始める！</a>
        <a href="<c:url value='/' />">トップページへ戻る</a>
    </c:param>
</c:import>