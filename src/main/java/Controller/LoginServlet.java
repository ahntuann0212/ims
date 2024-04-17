package Controller;

import Dao.AccountDAO;
import Model.Account;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("view/login.jsp").forward(request,response);
    }
    AccountDAO daoAccount = new AccountDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null ? ""
                : request.getParameter("action");
        switch (action) {
            case "login" :
                checkLogin(request, response);
                break;
            default :
                throw new AssertionError();
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void checkLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        Account account = daoAccount.getAcount(username, password);
        String rememberMe = request.getParameter("rememberMe");
        Cookie cookieRemember = new Cookie("remember", rememberMe);
        Cookie cookieUsername = new Cookie("cookieUsername", username);
        Cookie cookiePassword = new Cookie("cookiePassword", password);
        if (rememberMe != null) {
            cookieUsername.setMaxAge(24 * 60 * 60);
            cookiePassword.setMaxAge(24 * 60 * 60);
            cookieRemember.setMaxAge(24 * 60 * 60);
        } else {
            cookieUsername.setMaxAge(0);
            cookiePassword.setMaxAge(0);
            cookieRemember.setMaxAge(0);
        }
        // username
        response.addCookie(cookieUsername);
        // password
        response.addCookie(cookiePassword);
        // remember
        response.addCookie(cookieRemember);
        HttpSession session = request.getSession();
        if (account != null) {
            session.setAttribute("account", account);
            session.setAttribute("error", "");
            // có thể đi tới trang home đã lưu acount vào sesion
        } else {
            ((HttpSession) session).setAttribute("error", "Account and password information is incorrect");
            response.sendRedirect("login");
        }
    }
}
