package com.hostal.dao.interfaces;

import com.hostal.dao.UserDAOImpl;
import com.hostal.model.UserModel;
import com.hostal.persistence.User;

import java.util.List;

/**
 * User Dao Interface
 */
public interface UserDAOInterface  {

    public void addUser(UserModel model);

    public List<User> gelAllUsers();

}
