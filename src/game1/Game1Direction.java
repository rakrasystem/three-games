package game1;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Entrant;
import models.Game1;

/**
 * Servlet implementation class Game1Direction
 */
@WebServlet("/game1/direction")
public class Game1Direction extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Game1Direction() {
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
        Game1 gm1 = new Game1();
        if(request.getParameter("melissaCount") != null){
             gm1.setMelissaCount(Integer.parseInt(request.getParameter("melissaCount")));
        }
        if(request.getParameter("count") != null){
             gm1.setCount(Integer.parseInt(request.getParameter("count")));
        }

        //攻撃側の判別 0=プレイヤー 1=メリッサ
        Integer turn = Integer.parseInt(request.getParameter("turn"));

        //メリッサの宣言する方向の生成
        Random rnd = new  Random();
        int cpu = rnd.nextInt(4);

        //Playerの宣言した方向のデータを取得
        int hand = Integer.parseInt(request.getParameter("hand"));

        //方向の配列の作成
        String[] direction ={"上","右","左","下"};

        //勝敗の判定 0=あたり 1=はずれ
        Integer judge;
        if(cpu == hand){
            judge = 0;
        }else{
            judge = 1;
        }

        //数値を文字列に変換
        gm1.setMelissa(direction[cpu]);
        gm1.setPlayer(direction[hand]);

        //カウントの判定
        if(judge == 0 && turn == 0){
            gm1.setCount(gm1.getCount() + 1);
        }else if(judge == 0 && turn == 1){
            gm1.setMelissaCount(gm1.getMelissaCount() + 1);
        }

        String[] p = {"/WEB-INF/views/game1/d_win.jsp", "/WEB-INF/views/game1/d_draw_a.jsp"};
        String[] m = {"/WEB-INF/views/game1/d_lose.jsp", "/WEB-INF/views/game1/d_draw_b.jsp"};
        String[][] result = {p,m};

        //変数の登録
        request.setAttribute("gm1", gm1);

        //決着がついた場合、戦績登録へ振り分け
        if(gm1.getCount() == 2){
            Entrant e = (Entrant) request.getSession().getAttribute("login_player");
            gm1.recordGame1(gm1,e);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game1/result_a.jsp");
            rd.forward(request,response);
        }else if(gm1.getMelissaCount() == 2){
            Entrant e = (Entrant) request.getSession().getAttribute("login_player");
            gm1.recordGame1(gm1,e);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game1/result_b.jsp");
            rd.forward(request,response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher(result[turn][judge]);
            rd.forward(request, response);
        }
    }
}