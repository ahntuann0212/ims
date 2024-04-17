/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Dao;

import java.util.LinkedHashMap;
import java.util.List;
import Model.Job;

/**
 *
 * @author d
 */
public class JobDAO extends GenericDAO<Job> {

    @Override
    public List<Job> findAll() {
        return queryGenericDAO();
    }

    public static void main(String[] args) {
        for (Job job : new JobDAO().findAll()) {
            System.out.println(job);
        }
    }

    @Override
    public int insert(Job t) {

        return 0;

    }

    public void insertJob(Job t) {
        String sql = "INSERT INTO [dbo].[Job]\n"
                + "           ([title]\n"
                + "           ,[skill]\n"
                + "           ,[start_date]\n"
                + "           ,[end_date]\n"
                + "           ,[salary_from]\n"
                + "           ,[salary_to]\n"
                + "           ,[benefit]\n"
                + "           ,[address]\n"
                + "           ,[level]\n"
                + "           ,[description]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("title", t.getTitle());
        parameterMap.put("skill", t.getSkill());
        parameterMap.put("start_date", t.getStart_date());
        parameterMap.put("end_date", t.getEnd_date());
        parameterMap.put("salary_from", t.getSalary_from());
        parameterMap.put("salary_to", t.getSalary_to());
        parameterMap.put("benefit", t.getBenefit());
        parameterMap.put("address", t.getBenefit());
        parameterMap.put("level", t.getLevel());
        parameterMap.put("description", t.getDescription());
        parameterMap.put("status", t.isStatus());
        insertGenericDAO(sql);
    }

    public void updateJob(Job t) {
        String sql = "UPDATE [dbo].[Job]\n"
                + "   SET [title] = ?\n"
                + "      ,[skill] = ?\n"
                + "      ,[start_date] = ?\n"
                + "      ,[end_date] = ?\n"
                + "      ,[salary_from] = ?\n"
                + "      ,[salary_to] = ?\n"
                + "      ,[benefit] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[level] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[status] = ?\n"
                + " WHERE job_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("title", t.getTitle());
        parameterMap.put("skill", t.getSkill());
        parameterMap.put("start_date", t.getStart_date());
        parameterMap.put("end_date", t.getEnd_date());
        parameterMap.put("salary_from", t.getSalary_from());
        parameterMap.put("salary_to", t.getSalary_to());
        parameterMap.put("benefit", t.getBenefit());
        parameterMap.put("address", t.getBenefit());
        parameterMap.put("level", t.getLevel());
        parameterMap.put("description", t.getDescription());
        parameterMap.put("status", t.isStatus());
        parameterMap.put("id", t.getJob_id());
        updateGenericDAO(sql);
    }

    public void deleteJob(int id) {
        String sql = "DELETE FROM [dbo].[Job]\n"
                + "      WHERE job_id = ?";
        parameterMap = new LinkedHashMap<>();
        parameterMap.put("id", id);
        deleteGenericDAO(sql);
    }

}
