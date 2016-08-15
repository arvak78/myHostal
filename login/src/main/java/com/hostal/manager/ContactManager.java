package com.hostal.manager;

import com.hostal.dao.interfaces.ContactDAOInterface;
import com.hostal.persistence.Contact;
import org.springframework.beans.factory.annotation.Autowired;

import javax.inject.Inject;
import javax.inject.Named;

/**
 * Created by Manel on 15/08/2016.
 */
@Named
public class ContactManager {

    @Inject
    private ContactDAOInterface contactDAO;

    public void addContact(Contact contact) {
        contactDAO.addContactInfo(contact);
    }

}
