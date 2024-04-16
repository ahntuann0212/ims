package Dao;

import Model.Interview;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class InterviewDAO extends DBContext{
    public List<Interview> getInterviews() {
        UserDAO userDAO = new UserDAO();
        List<Interview> interviews = new ArrayList<Interview>();
        String sql = "select * from interview";
        try {
            PreparedStatement preparedStatement = conn.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.getResultSet();
            while (resultSet.next()) {
                Interview interview = new Interview();
                interview.setId(resultSet.getInt("id"));
                interview.setInterviewer(userDAO.getUserById(resultSet.getInt("interviewer_id")));
                interview.setCandidate(userDAO.getUserById(resultSet.getInt("candidate_id")));
                interview.setSchedule(resultSet.getString("schedule_time"));
                interview.setTitle(resultSet.getString("title"));
                interviews.add(interview);
            }
            return interviews;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
