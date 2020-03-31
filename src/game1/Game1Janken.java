package game1;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Game1;

/**
 * Servlet implementation class Game1Janken
 */
@WebServlet("/game1/janken")
public class Game1Janken extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Game1Janken() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //変数の作成と、データの格納
        Game1 gm1 = new Game1();
        if(request.getParameter("melissaCount") != null){
             gm1.setMelissaCount(Integer.parseInt(request.getParameter("melissaCount")));
        }
        if(request.getParameter("count") != null){
             gm1.setCount(Integer.parseInt(request.getParameter("count")));
        }
        int hand = Integer.parseInt(request.getParameter("hand"));

        //メリッサの出す手の生成
        Random rnd = new  Random();
        int cpu = rnd.nextInt(3);

        //じゃんけんの配列の作成
        String[] janken  = {"グー","チョキ","パー"};

        //勝敗の判定 0=引き分け 1=勝ち 2=負け
        Integer result = (cpu - hand + 3) % 3;

        //出した手の登録
        gm1.setMelissa(janken[cpu]);
        gm1.setPlayer(janken[hand]);

        //変数の登録
        request.setAttribute("gm1", gm1);

        //勝敗に応じたページへ振り分け
        if(result == 0){
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game1/j_draw.jsp");
            rd.forward(request,response);
        }else if(result == 1){
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game1/j_win.jsp");
            rd.forward(request, response);
        }else if(result == 2){
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game1/j_lose.jsp");
            rd.forward(request, response);
        }
    }
}