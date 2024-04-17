package Controller;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ViewUserServlet")
public class ViewUserServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin từ các tham số trên URL
        String username = "Howard Tanner";
        String email = "howard@contact.com";
        String phone = "20th Dec 2020";
        String role = "20th Dec 2020";
        String status = "Active";

        // Chuyển hướng sang trang jsp và truyền thông tin qua attribute của request
        request.setAttribute("username", username);
        request.setAttribute("email", email);
        request.setAttribute("phone", phone);
        request.setAttribute("role", role);
        request.setAttribute("status", status);
        request.getRequestDispatcher("/view/user/viewUser.jsp").forward(request, response);

    }
}
