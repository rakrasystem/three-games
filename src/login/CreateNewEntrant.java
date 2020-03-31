package login;

import java.io.IOException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import models.Entrant;
import models.validators.EntrantValidators;
import utils.DBUtil;
import utils.EncryptUtil;

/**
 * Servlet implementation class CreateNewEntrant
 */
@WebServlet("/create")
public class CreateNewEntrant extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateNewEntrant() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String _token = (String)request.getParameter("_token");
        if(_token != null && _token.equals(request.getSession().getId())){
            EntityManager em = DBUtil.createEntityManager();

            Entrant e = new Entrant();

            e.setPlayer_name(request.getParameter("name"));
            e.setPassword(EncryptUtil.getPasswordEncrypt(
                    request.getParameter("password"),(String)this.getServletContext().getAttribute("salt")));


            List<String> errors = EntrantValidators.validate(e,true,true);
            if(errors.size() > 0){
                em.close();

                request.setAttribute("_token", request.getSession().getId());
                request.setAttribute("entrant",e);
                request.setAttribute("errors", errors);

                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/login/new.jsp");
                rd.forward(request, response);
            } else{
                em.getTransaction().begin();
                em.persist(e);
                em.getTransaction().commit();
                em.close();
                request.getSession().setAttribute("flush", "登録が完了しました。");
                response.sendRedirect(request.getContextPath() + "/index");
            }
        }
    }
}

