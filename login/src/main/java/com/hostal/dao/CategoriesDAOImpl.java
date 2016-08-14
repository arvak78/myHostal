package com.hostal.dao;

import com.hostal.dao.interfaces.CategoriesDAOInterface;
import com.hostal.persistence.Categories;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Named;
import java.util.List;

/**
 * CCategories DAO
 */
@Named
@Transactional("transactionManager")
public class CategoriesDAOImpl implements CategoriesDAOInterface {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Categories> getCategories() {

        return sessionFactory.getCurrentSession().createQuery("from Categories order by name asc").list();

    }

}
