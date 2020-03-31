package filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Entrant;

/**
 * Servlet Filter implementation class LoginFilter
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor.
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
        // TODO Auto-generated method stub
    }

    /**
     * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
     */
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        String context_path = ((HttpServletRequest)request).getContextPath();
        String servlet_path = ((HttpServletRequest)request).getServletPath();

        //cssフォルダ内は処理から除外
        if(!servlet_path.matches("/css.*")){
            HttpSession session = ((HttpServletRequest)request).getSession();
            //セッションスコープ内のログインユーザー情報の取得
            Entrant e = (Entrant)session.getAttribute("login_player");

            if(!servlet_path.equals("/login")){
                if(!servlet_path.equals("/new")){
                    if(!servlet_path.equals("/create")){

                //ログイン画面以外について、ログイン状態ならばログイン画面にリダイレクト
                if(e == null){
                    ((HttpServletResponse)response).sendRedirect(context_path + "/login");
                    return;
                }}}

            }else{
                //ログイン画面について:ログインしているのにログイン画面を表示させようとした場合、
                //システムのトップページヘリダイレクト
                if(e != null){
                    ((HttpServletResponse)response).sendRedirect(context_path + "/");
                    return;
                }
            }
        }
        chain.doFilter(request, response);


    }


    /**
     * @see Filter#init(FilterConfig)
     */
    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }

}

