package com.weeklyreport.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.weeklyreport.dao.UserDAO;
import com.weeklyreport.model.User;

import java.util.Map;

public class LoginAction extends ActionSupport {
    private String username;
    private String password;

    public String execute() {
        // Basic validation
        if (username == null || username.trim().isEmpty()) {
            addActionError("Username is required");
            return ERROR;
        }
        if (password == null || password.trim().isEmpty()) {
            addActionError("Password is required");
            return ERROR;
        }

        UserDAO dao = new UserDAO();
        User u = dao.findByUsername(username.trim());
        if (u != null && u.getPassword().equals(password)) {
            Map<String, Object> session = ActionContext.getContext().getSession();
            session.put("user", u);
            addActionMessage("Login successful! Welcome " + u.getFullName());
            return SUCCESS;
        }
        addActionError("Invalid username or password");
        return ERROR;
    }

    public String logout() {
        Map<String, Object> session = ActionContext.getContext().getSession();
        session.remove("user");
        addActionMessage("You have been logged out successfully");
        return SUCCESS;
    }

    // getters/setters
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}