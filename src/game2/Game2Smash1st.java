package game2;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Game2;

/**
 * Servlet implementation class Game2Smash1st
 */
@WebServlet("/game2/smash1st")
public class Game2Smash1st extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public Game2Smash1st() {
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
        Integer hit;
        int turn = Integer.parseInt(request.getParameter("turn"));
        sm.setPlayerHand(Integer.parseInt(request.getParameter("playerHand")));
        if(request.getParameter("playerCall") != null){
            sm.setPlayerCall(Integer.parseInt(request.getParameter("playerCall")));
        }

        //テティスの行動を決める。立てる指 → 宣言する数
        Random rnd = new Random();
        sm.setCpuHand(rnd.nextInt(sm.getCpuUnit() + 1));
        sm.setCpuCall(rnd.nextInt(sm.getPlayerUnit() + 1) + sm.getCpuHand());

        //勝敗の判定 hit=0 あたり  hit=1 はずれ
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

        //結果振り分けのための配列作成
        String[] player = {"/WEB-INF/views/game2/hit_a.jsp", "/WEB-INF/views/game2/miss_2_a.jsp"};
        String[] thetis = {"/WEB-INF/views/game2/hit_b.jsp", "/WEB-INF/views/game2/miss_2_b.jsp"};
        String[][] result = {player, thetis};

        //振り分け
        request.setAttribute("sm", sm);
        request.setAttribute("allhand", allhand);
        RequestDispatcher rd = request.getRequestDispatcher(result[turn][hit]);
        rd.forward(request,response);
    }
}
