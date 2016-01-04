package com.hostal.manager;

import com.hostal.dao.UserDAOImpl;
import com.hostal.dao.interfaces.UserDAOInterface;
import com.hostal.model.UserModel;

import javax.inject.Inject;
import javax.inject.Named;

@Named
public class UserManager {

	@Inject
	public UserDAOInterface userDAO;

	public void setUserDAO(UserDAOImpl userDAOImpl) {
		this.userDAO = userDAOImpl;
	}

	public void addUser(UserModel model) {
		userDAO.addUser(model);
	}

}