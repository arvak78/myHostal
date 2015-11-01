package com.hostal.manager;

import com.hostal.dao.UserDAO;
import com.hostal.model.UserModel;

import javax.inject.Inject;
import javax.inject.Named;

@Named
public class UserManager {

	@Inject
	public UserDAO userDAO;

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	public void addUser(UserModel model) {
		userDAO.addUser(model);
	}

}