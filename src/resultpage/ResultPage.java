package resultpage;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Entrant;
import utils.DBUtil;

/**
 * Servlet implementation class ResultPage
 */
@WebServlet("/resultpage")
public class ResultPage extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResultPage() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       //DBに接続して、勝敗のデータの呼び出し
        EntityManager em = DBUtil.createEntityManager();
        Entrant e = (Entrant) request.getSession().getAttribute("login_player");
        e = em.createNamedQuery("getAllEntrant", Entrant.class)
                .setParameter("name", e.getName())
                .getSingleResult();
        em.close();

        //データの格納とページの表示
        request.setAttribute("e", e);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/result/result.jsp");
        rd.forward(request, response);

    }

}
