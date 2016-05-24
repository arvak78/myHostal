package com.hostal.dao;

import com.hostal.dao.interfaces.PostsDaoInterface;
import com.hostal.persistence.Posts;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Named;
import java.util.List;

/**
 * PostsDaoImpl
 */
@Named
@Transactional("transactionManager")
public class PostsDaoImpl implements PostsDaoInterface {

    @Autowired
    private SessionFactory sessionFactory;

    public List<Posts> getAllPosts() {

        List<Posts> postList = (List<Posts>)sessionFactory.getCurrentSession().createQuery("from Posts ").list();

        return postList;

    }
}
