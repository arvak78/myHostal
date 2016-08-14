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

    public List<Posts> searchPostsByWord(String search) {
        String sql = "from Posts where body like '%" + search + "%' or description like '%" + search + "%'";
        List<Posts> postList = (List<Posts>)sessionFactory.getCurrentSession().createQuery(sql).list();

        return postList;
    }

    public List<Posts> getRecentPosts(int limit) {

        String sql = "from Posts order by created desc";
        List<Posts> postList = (List<Posts>)sessionFactory.getCurrentSession().createQuery(sql).list();
        sessionFactory.getCurrentSession().createSQLQuery(sql).setMaxResults(limit).list();

        return postList;
    }

    public void addVisit(int myId) {
        int update = sessionFactory.getCurrentSession().createQuery("update Posts set visits = visits + 1 where id = " + myId).executeUpdate();
    }

    public List<Posts> getPostsByCategory(String category) {
        return sessionFactory.getCurrentSession().createQuery("from Posts where categories = " + category + " order by created desc ").list();
    }

}
