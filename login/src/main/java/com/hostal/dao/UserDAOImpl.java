package com.hostal.dao;


import com.hostal.dao.interfaces.UserDAOInterface;
import com.hostal.model.UserModel;
import com.hostal.persistence.Role;
import com.hostal.persistence.User;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Named;
import java.util.List;

@Named
@Transactional("transactionManager")
public class UserDAOImpl implements UserDAOInterface {

	@Autowired
	private SessionFactory sessionFactory;

	public void addUser(UserModel model) {
		User user = new User();
		user.setLogin(model.getLogin());
		user.setPwd(model.getPwd());
		user.setEnabled(1);
		Role role = (Role) sessionFactory.getCurrentSession()
				.createQuery("from Role where code='ROLE_USER'").uniqueResult();
		if (role == null) {
			role = new Role();
			role.setCode("ROLE_USER");
			role.setLabel("ROLE FOR SIMPLE ACCESS");
			sessionFactory.getCurrentSession().save(role);
		}

		sessionFactory.getCurrentSession().save(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> gelAllUsers() {
		return sessionFactory.getCurrentSession().createCriteria(User.class).
				addOrder(Order.asc("login")).list();

	}

	public boolean validate(String user, String password) {

		Query query = sessionFactory.getCurrentSession().createQuery("from User where login = '" + user
				+ "' and pwd = '" + password + "')");

		return !query.list().isEmpty();
	}

}
