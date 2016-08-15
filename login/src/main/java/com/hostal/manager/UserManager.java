package com.hostal.manager;

import com.hostal.dao.UserDAOImpl;
import com.hostal.dao.interfaces.UserDAOInterface;
import com.hostal.model.UserModel;
import com.hostal.persistence.User;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

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

	public List<User> gelAllUsers() {
		return userDAO.gelAllUsers();
	}

}