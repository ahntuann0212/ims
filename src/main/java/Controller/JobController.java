package Controller;

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

    JobDAO daoJob = new JobDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Job> listJob = daoJob.findAll();
        request.setAttribute("listJob", listJob);
        request.getRequestDispatcher("/view/job/job.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action") == null ? ""
                : request.getParameter("action");
        switch (action) {
            case "add":
                addJob(request);
                break;
            case "edit":
                editJob(request);
                break;
            case "delete":
                deleteJob(request);
                break;
            default:
                break;
        }
        response.sendRedirect("job");
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

    private Job getJob(HttpServletRequest request) {
        String titleInput = request.getParameter("titleInput");
        String skillInput = request.getParameter("skillInput");
        Date startDateInput = Date.valueOf(request.getParameter("startDateInput"));
        Date endDateInput = Date.valueOf(request.getParameter("endDateInput"));
        double salaryFromInput = Double.parseDouble(request.getParameter("salaryFromInput"));
        double salaryToInput = Double.parseDouble(request.getParameter("salaryToInput"));
        String benefitInput = request.getParameter("benefitInput");
        String addressInput = request.getParameter("addressInput");
        String levelInput = request.getParameter("levelInput");
        String descriptionInput = request.getParameter("descriptionInput");
        boolean statusInput = request.getParameter("statusInput").equalsIgnoreCase("Open");
        Job job = new Job();
        job.setTitle(titleInput);
        job.setSkill(skillInput);
        job.setStart_date(startDateInput);
        job.setEnd_date(endDateInput);
        job.setSalary_from(salaryFromInput);
        job.setSalary_to(salaryToInput);
        job.setBenefit(benefitInput);
        job.setAddress(addressInput);
        job.setLevel(levelInput);
        job.setDescription(descriptionInput);
        job.setStatus(statusInput);
        return job;
    }

    private void addJob(HttpServletRequest request) {
        Job job = getJob(request);
        daoJob.insertJob(job);
    }

    private void editJob(HttpServletRequest request) {
        Job job = getJob(request);
        int id = Integer.parseInt(request.getParameter("id"));
        job.setJob_id(id);
        daoJob.updateJob(job);
    }

    private void deleteJob(HttpServletRequest request) {
        int id = Integer.parseInt(request.getParameter("id"));
        daoJob.deleteJob(id);
    }

}
