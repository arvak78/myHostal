package com.hostal.manager;

import javax.inject.Inject;
import javax.inject.Named;

import com.hostal.dao.UserDAO;
import com.hostal.model.UserModel;

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