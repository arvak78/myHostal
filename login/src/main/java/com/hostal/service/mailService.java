package com.hostal.service;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

/**
 * Created by Manel on 15/08/2016.
 */
@Service
public class MailService {

    private Properties mailServerProperties;
    private Session getMailSession;
    private MimeMessage generateMailMessage;

    public static final String SMTP_SERVER = "smtp.gmail.com";
    public static final String emailID = "mediador.pm@gmail.com";

    public void sendEmail(String toEmail, String fromEmail, String password, String subject, String body, String inCopy)
            throws MessagingException, UnsupportedEncodingException {

        // 1st ===> setup Mail Server Properties..
        mailServerProperties = System.getProperties();
        mailServerProperties.put("mail.smtp.port", "587");
        mailServerProperties.put("mail.smtp.auth", "true");
        mailServerProperties.put("mail.smtp.starttls.enable", "true");

        // 2nd ===> get Mail Session..
        System.out.println("\n\n ");
        getMailSession = Session.getDefaultInstance(mailServerProperties, null);
        generateMailMessage = new MimeMessage(getMailSession);
        generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
        if(!StringUtils.isEmpty(inCopy)) {
            generateMailMessage.addRecipient(Message.RecipientType.CC, new InternetAddress(inCopy));
        }
        generateMailMessage.setSubject(subject);
        generateMailMessage.setContent(body, "text/html");

        // 3rd ===> Get Session and Send mail
        Transport transport = getMailSession.getTransport("smtp");

        // Enter your correct gmail UserID and Password
        // if you have 2FA enabled then provide App Specific Password
        transport.connect(SMTP_SERVER, fromEmail, password);
        transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
        transport.close();

    }

}
