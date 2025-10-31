package com.weeklyreport.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.weeklyreport.dao.ReportDAO;
import com.weeklyreport.model.Report;
import com.weeklyreport.model.User;

// import java.sql.Date;
import java.util.List;
import java.util.Map;

public class ReportAction extends ActionSupport {
    private Report report = new Report();
    private List<Report> reports;

    public String add() {
        // Get current user from session
        Map<String, Object> session = ActionContext.getContext().getSession();
        User currentUser = (User) session.get("user");

        if (currentUser == null) {
            addActionError("Please login first");
            return "login";
        }

        // Set the logged-in user's ID
        report.setUserId(currentUser.getId());

        // Validation
        if (report.getSummary() == null || report.getSummary().trim().isEmpty()) {
            addActionError("Summary is required");
            return INPUT;
        }
        if (report.getWeekStart() == null || report.getWeekEnd() == null) {
            addActionError("Week start and end dates are required");
            return INPUT;
        }

        report.setStatus("submitted");
        ReportDAO dao = new ReportDAO();
        boolean ok = dao.add(report);
        if (ok) {
            addActionMessage("Report submitted successfully!");
            return SUCCESS;
        }
        addActionError("Failed to add report");
        return ERROR;
    }

    public String list() {
        ReportDAO dao = new ReportDAO();
        reports = dao.findAll();
        return SUCCESS;
    }

    // getters/setters
    public Report getReport() {
        return report;
    }

    public void setReport(Report report) {
        this.report = report;
    }

    public List<Report> getReports() {
        return reports;
    }

    public void setReports(List<Report> reports) {
        this.reports = reports;
    }
}