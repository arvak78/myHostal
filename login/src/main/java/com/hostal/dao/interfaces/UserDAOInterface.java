package com.hostal.dao.interfaces;

import com.hostal.model.UserModel;

import java.util.List;

/**
 * User Dao Interface
 */
public interface UserDAOInterface  {

    public void addUser(UserModel model);

    public List gelAllUsers();

    public boolean validate(String user, String password);

}
