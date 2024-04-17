package Controller;

import Dao.ListJobDAO;
import Model.Job;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.util.List;


@WebServlet("/JobServlet")
public class JobController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            ListJobDAO empDao = new ListJobDAO();
            List<Job> listJob = empDao.getAllEmployee();
            request.setAttribute("listJob", listJob);
            request.getRequestDispatcher("/view/job/job.jsp").forward(request, response);

        } catch (Exception e) {
            System.out.println(e);
        }


    }

}

