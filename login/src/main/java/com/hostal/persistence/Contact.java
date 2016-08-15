package com.hostal.persistence;

import javax.persistence.*;
import javax.validation.constraints.Size;
import java.util.Date;

/**
 * Created by Manel on 14/08/2016.
 */
@Entity
public class Contact {
    private int id;

    @Size(min=2, max=90)
    private String name;

    @Size(min=2, max=120)
    private String email;

    @Size(min=2, max=150)
    private String subject;

    @Size(min=2, max=4000)
    private String message;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "created", columnDefinition="DATETIME")
    private Date created;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "subject")
    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    @Basic
    @Column(name = "message")
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Basic
    @Column(name = "created")
    public Date getCreate() {
        return created;
    }

    public void setCreate(Date create) {
        this.created = create;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Contact contact = (Contact) o;

        if (id != contact.id) return false;
        if (name != null ? !name.equals(contact.name) : contact.name != null) return false;
        if (email != null ? !email.equals(contact.email) : contact.email != null) return false;
        if (subject != null ? !subject.equals(contact.subject) : contact.subject != null) return false;
        if (message != null ? !message.equals(contact.message) : contact.message != null) return false;
        if (created != null ? !created.equals(contact.created) : contact.created != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (subject != null ? subject.hashCode() : 0);
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (created != null ? created.hashCode() : 0);
        return result;
    }
}
