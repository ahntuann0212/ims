package Controller;

import Dao.InterviewDAO;
import Model.Interview;
import Ulti.Helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/InterviewServlet")
public class InterviewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        if(page == null){
            page = "1";
        }
        
        InterviewDAO dao = new InterviewDAO();
        List<Interview> interviews = dao.getInterviews();
        List subList = Helper.Pagination(interviews,Integer.parseInt(page),5);
        int total = interviews.size() % 5 == 0? interviews.size() / 5 : (interviews.size() / 5 + 1);
        request.setAttribute("interviews", subList);
        request.setAttribute("page", page);
        request.setAttribute("total", total);
        request.getRequestDispatcher("/view/schedule/interview.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
