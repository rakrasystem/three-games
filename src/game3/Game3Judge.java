package game3;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Entrant;
import models.Game3;

/**
 * Servlet implementation class Game3Judge
 */
@WebServlet("/game3/judge")
public class Game3Judge extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Game3Judge() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Game3 gm3 = new Game3();
        if(request.getParameter("playerP") != null){
        gm3.setPlayerP(Integer.parseInt(request.getParameter("playerP")));
        gm3.setAthenaP(Integer.parseInt(request.getParameter("athenaP")));
        }

        //アテナの出す手の作成
        Integer athena;
        Random rnd = new Random();
        if(gm3.getAthenaP() == 3){
            athena = 3;
        }else if(gm3.getAthenaP() == 0){
            athena = rnd.nextInt(2);
        }else{
            athena = rnd.nextInt(3);
        }

        //プレイヤーの出す手の取得
        //0 = チャージ,  1 = シールド,  2 = アタック,  3 = スペシャル
        Integer player = Integer.parseInt(request.getParameter("hand"));

        //プレイヤーとアテナのパワーカウントの変更
        if(player == 0){
            gm3.setPlayerP(gm3.getPlayerP() + 1);
        }else if(player == 2){
            gm3.setPlayerP(gm3.getPlayerP() - 1);
        }
        if(athena == 0){
            gm3.setAthenaP(gm3.getAthenaP() + 1);
        }else if(athena == 2){
            gm3.setAthenaP(gm3.getAthenaP() - 1);
        }else if(athena == 3){
            gm3.setAthenaP(0);
        }

      //数値を文字列に変換
        String[] hand = {"チャージ","シールド","アタック","スペシャル"};
        gm3.setPlayer_hand(hand[player]);
        gm3.setAthena_hand(hand[athena]);


        //勝敗の判定
        Integer[][] judge ={{0,0,2,2},{0,0,0,2},{1,0,0,2},{1,1,1,3}};
        Integer result = judge[player][athena];
        String[] link ={"/WEB-INF/views/game3/draw.jsp", "", "", "/WEB-INF/views/game3/draw_s.jsp"};

        //結果の振り分け
        request.setAttribute("gm3",gm3);

        if(result == 1){
            Entrant e = (Entrant) request.getSession().getAttribute("login_player");
            gm3.recordGame3(gm3, e);
            RequestDispatcher rd = request.getRequestDispatcher("/game3/win.jsp");
            rd.forward(request, response);
        }else if (result == 2){
            Entrant e = (Entrant) request.getSession().getAttribute("login_player");
            gm3.recordGame3(gm3, e);
            RequestDispatcher rd = request.getRequestDispatcher("/game3/lose.jsp");
            rd.forward(request, response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher(link[result]);
            rd.forward(request, response);
        }
    }
}