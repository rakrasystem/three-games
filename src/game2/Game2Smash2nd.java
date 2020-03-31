package game2;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Entrant;
import models.Game2;

/**
 * Servlet implementation class Game2Smash2nd
 */
@WebServlet("/game2/smash2nd")
public class Game2Smash2nd extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Game2Smash2nd() {
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
        //必要なクラスの作成と、プレイヤーの入力情報の取得
        Game2 sm = new Game2();
        if(request.getParameter("playerCall") != null){
            sm.setPlayerCall(Integer.parseInt(request.getParameter("playerCall")));
        }
        if(request.getParameter("playerUnit") != null){
            sm.setPlayerUnit(Integer.parseInt(request.getParameter("playerUnit")));
        }
        if(request.getParameter("cpuUnit") != null){
            sm.setCpuUnit(Integer.parseInt(request.getParameter("cpuUnit")));
        }
        sm.setPlayerHand(Integer.parseInt(request.getParameter("playerHand")));
        int turn = Integer.parseInt(request.getParameter("turn"));
        Integer hit;

        //テティスの行動を決める。立てる指 → 宣言する数
        Random rnd = new Random();
        sm.setCpuHand(rnd.nextInt(sm.getCpuUnit() + 1));
        sm.setCpuCall(rnd.nextInt(sm.getPlayerUnit() + 1) + sm.getCpuHand());

        //勝敗の判定 hit=0 勝ち hit=1 ハズレ
        Integer allhand = sm.getPlayerHand() + sm.getCpuHand();
        if (turn == 0){
            hit = allhand - sm.getPlayerCall();
        }else{
            hit = allhand - sm.getCpuCall();
        }
        if(hit != 0){
            hit = 1;
        }

        //カウントの増減
        if(hit == 0 && turn == 0){
            sm.setPlayerUnit(sm.getPlayerUnit() - 1);
        }else if(hit == 0 && turn == 1){
            sm.setCpuUnit(sm.getCpuUnit() - 1);
        }

        //振り分けの配列の作成
        String[] playerh = {"", "/WEB-INF/views/game2/hit_a.jsp", ""};
        String[] playerm = {"", "/WEB-INF/views/game2/miss_1_a.jsp", "/WEB-INF/views/game2/miss_2_1_a.jsp"};
        String[] thetish = {"", "/WEB-INF/views/game2/hit_b.jsp",""};
        String[] thetism = {"", "/WEB-INF/views/game2/miss_1_b.jsp", "/WEB-INF/views/game2/miss_1_2_b.jsp"};
        String[][] resultp = {playerh,playerm};
        String[][] resultt = {thetish,thetism};

        request.setAttribute("sm", sm);
        request.setAttribute("allhand", allhand);

        if(turn == 0 && sm.getPlayerUnit() == 0){
            Entrant e = (Entrant) request.getSession().getAttribute("login_player");
            sm.recordGame2(sm, e);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game2/end_a.jsp");
            rd.forward(request,response);
        }else if(turn == 0){
            RequestDispatcher rd = request.getRequestDispatcher(resultp[hit][sm.getPlayerUnit()]);
            rd.forward(request,response);
        }else if(turn == 1 && sm.getCpuUnit() == 0){
            Entrant e = (Entrant) request.getSession().getAttribute("login_player");
            sm.recordGame2(sm, e);
            RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/game2/end_b.jsp");
            rd.forward(request,response);
        }else{
            RequestDispatcher rd = request.getRequestDispatcher(resultt[hit][sm.getCpuUnit()]);
            rd.forward(request,response);
        }


    }
}
