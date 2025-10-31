package com.weeklyreport.action;

import com.opensymphony.xwork2.ActionSupport;
import com.weeklyreport.dao.UserDAO;
import com.weeklyreport.model.User;

import java.util.List;

public class UserAction extends ActionSupport {
    private User user = new User();
    private List<User> users;

    public String list() {
        UserDAO dao = new UserDAO();
        users = dao.findAll();
        return SUCCESS;
    }

    public String create() {
        if (user.getUsername() == null || user.getUsername().trim().isEmpty()) {
            addActionError("Username required");
            return INPUT;
        }
        UserDAO dao = new UserDAO();
        dao.create(user);
        return SUCCESS;
    }

    // getters/setters
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
