package com.weeklyreport.dao;

import com.weeklyreport.model.Report;
import com.weeklyreport.util.DBUtil;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ReportDAO {

    public boolean add(Report r) {
        String sql = "INSERT INTO reports(user_id, week_start, week_end, summary, accomplishments, next_plan, issues, status) VALUES(?,?,?,?,?,?,?,?)";
        try (Connection c = DBUtil.getConnection();
                PreparedStatement ps = c.prepareStatement(sql)) {
            ps.setInt(1, r.getUserId());
            // ps.setDate(2, r.getWeekStart());
            // ps.setDate(3, r.getWeekEnd());
            ps.setDate(2, java.sql.Date.valueOf(r.getWeekStart()));
            ps.setDate(3, java.sql.Date.valueOf(r.getWeekEnd()));
            ps.setString(4, r.getSummary());
            ps.setString(5, r.getAccomplishments());
            ps.setString(6, r.getNextPlan());
            ps.setString(7, r.getIssues());
            ps.setString(8, r.getStatus());
            return ps.executeUpdate() == 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public List<Report> findAll() {
        String sql = "SELECT * FROM reports ORDER BY week_start DESC";
        List<Report> list = new ArrayList<>();
        try (Connection c = DBUtil.getConnection();
                PreparedStatement ps = c.prepareStatement(sql);
                ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                Report r = new Report();
                r.setId(rs.getInt("id"));
                r.setUserId(rs.getInt("user_id"));
                r.setWeekStart(rs.getString("week_start"));
                r.setWeekEnd(rs.getString("week_end"));
                r.setSummary(rs.getString("summary"));
                r.setAccomplishments(rs.getString("accomplishments"));
                r.setNextPlan(rs.getString("next_plan"));
                r.setIssues(rs.getString("issues"));
                r.setStatus(rs.getString("status"));
                list.add(r);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
