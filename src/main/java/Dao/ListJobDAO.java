package Dao;

import Model.Job;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ListJobDAO {

    public List<Job> getAllEmployee() throws SQLException, ClassNotFoundException {
        DBContext dbcontext = new DBContext();
        Connection conn = dbcontext.getConnection();
        List<Job> listEmployee = new ArrayList<>();

        // create query
        String query = "SELECT title,skill,start_date,end_date,level,status FROM job";

        Statement stm = null;
        try {
            stm = conn.createStatement();

            // excute query
            ResultSet rs = stm.executeQuery(query);

            // browse result
            while (rs.next()) {
                Job job = new Job();

                job.setTitle(rs.getString(1));
                job.setSkill(rs.getString(2));
                job.setStart_date(rs.getDate(3));
                job.setEnd_date(rs.getDate(4));
                job.setLevel(rs.getString(5));
                job.setStatus(rs.getBoolean(6));

                listEmployee.add(job);

            }
            conn.close();
            return listEmployee;
        } catch (Exception e) {
            System.out.println("khong lay dc du lieu");

        }

        return null;

    }

    	public static void main(String[] args) throws SQLException, ClassNotFoundException {
		ListJobDAO em = new ListJobDAO();
		List<Job> l = em.getAllEmployee();
		for (Job e : l) {
			System.out.println("id :" + e.getTitle() + ", name:" + e.getSkill() + ", dob :" + e.getLevel());
		}

	}

}
