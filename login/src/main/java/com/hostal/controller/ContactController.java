package com.hostal.controller;

import com.hostal.manager.ContactManager;
import com.hostal.manager.UserManager;
import com.hostal.persistence.Contact;
import com.hostal.persistence.User;
import com.hostal.service.MailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.mail.MessagingException;
import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

/**
 * Created by Manel on 14/08/2016.
 */
@Controller
@RequestMapping("/contact")
public class ContactController {

    @Autowired
    private MailService mailService;

    @Autowired
    private UserManager userManager;

    @Autowired
    private ContactManager contactManager;

    @RequestMapping("/information")
    public ModelAndView getInformation() {

        return new ModelAndView("contact");
    }

    @RequestMapping("/sendmail")
    public ModelAndView sendMail(@Valid @ModelAttribute("contactForm") Contact contact, BindingResult bindingResult)
            throws UnsupportedEncodingException, MessagingException {

        if (bindingResult.hasErrors()) {
            return new ModelAndView("contact");
        }

        List<User> userList = userManager.gelAllUsers();

        for (User user : userList) {
            if(user.getEmail() != null && user.getEmail().length() > 0) {
                mailService.sendEmail(user.getEmail(), MailService.emailID, "mediador", contact.getSubject(),
                        contact.getMessage(), null);
            }
        }

        contact.setCreate(new Date());
        contactManager.addContact(contact);

        return new ModelAndView("contact");
    }

}
