package Dao;

import Model.Account;
import Model.Candidate;
import Model.User;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CandidateDAO {
    public List<Candidate> getAllCandidate() {
        List<Candidate> candidateList = new ArrayList<>();
        try {
            Connection con = DBContext.getConnection();
            CallableStatement stmt = con.prepareCall("{call CandidateList}");
            stmt.execute();
            ResultSet rs = stmt.getResultSet();
            while (rs.next()) {
                User user = new User();
                user.setName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setGender(rs.getString("gender"));
                user.setRoleId(rs.getInt("role_id"));
                Candidate candidate = new Candidate();
                candidate.setCandidateId(rs.getInt("candidate_id"));
                candidate.setUserId(rs.getInt("user_id"));
                candidate.setUser(user);
                candidate.setPosition(rs.getString("position"));
                candidate.setSkill(rs.getString("skill"));
                candidate.setRecruiterId(rs.getInt("recruiter_id"));
                candidate.setStatus(rs.getString("status"));
                candidate.setHighestLevel(rs.getString("highest_level"));
                Account account = new Account();
                account.setUser_name(rs.getString("user_name_hr"));
                candidate.setAccount(account);
                candidateList.add(candidate);
            }
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return candidateList;
    }
}
