package com.hostal.dao;

import com.hostal.dao.interfaces.ContactDAOInterface;
import com.hostal.persistence.Contact;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Named;

/**
 * Created by Manel on 15/08/2016.
 */
@Named
@Transactional("transactionManager")
public class ContactDaoImpl implements ContactDAOInterface{

    @Autowired
    private SessionFactory sessionFactory;

    public void addContactInfo(Contact contact) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();

        session.save(contact);

        session.getTransaction().commit();
        session.flush();
        session.close();
    }
}
