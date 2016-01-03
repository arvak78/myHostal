package com.hostal.dao;


import com.hostal.model.UserModel;
import com.hostal.persistence.Role;
import com.hostal.persistence.User;
import org.hibernate.SessionFactory;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.HashSet;
import java.util.Set;

@Named
@Transactional("transactionManager")
public class UserDAO {

	@Inject
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

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
}
