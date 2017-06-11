package com.hostal.service;

import com.hostal.manager.UserManager;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

/**
 * Created by Manel on 11/06/2017.
 */
@ManagedBean(name = "userService")
@ApplicationScoped
public class UserService {

    @ManagedProperty("#{userManager}")
    private UserManager userManager;

    public boolean validar(String user, String password) {
        return userManager.validateUser(user, password);
    }

    public void setUserManager(UserManager userManager) {
        this.userManager = userManager;
    }

}
