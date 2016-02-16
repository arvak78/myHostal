package com.hostal.persistence;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * Created by Manel on 14/02/2016.
 */
@Entity
public class Clients {
    private int id;
    private String name;
    private String surname;
    private String surname2;
    private String document;
    private String documentType;
    private Date birthday;
    private String sex;

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
    @Column(name = "surname")
    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    @Basic
    @Column(name = "surname2")
    public String getSurname2() {
        return surname2;
    }

    public void setSurname2(String surname2) {
        this.surname2 = surname2;
    }

    @Basic
    @Column(name = "document")
    public String getDocument() {
        return document;
    }

    public void setDocument(String document) {
        this.document = document;
    }

    @Basic
    @Column(name = "document_type")
    public String getDocumentType() {
        return documentType;
    }

    public void setDocumentType(String documentType) {
        this.documentType = documentType;
    }

    @Basic
    @Column(name = "birthday")
    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Clients clients = (Clients) o;

        if (id != clients.id) return false;
        if (name != null ? !name.equals(clients.name) : clients.name != null) return false;
        if (surname != null ? !surname.equals(clients.surname) : clients.surname != null) return false;
        if (surname2 != null ? !surname2.equals(clients.surname2) : clients.surname2 != null) return false;
        if (document != null ? !document.equals(clients.document) : clients.document != null) return false;
        if (documentType != null ? !documentType.equals(clients.documentType) : clients.documentType != null)
            return false;
        if (birthday != null ? !birthday.equals(clients.birthday) : clients.birthday != null) return false;
        if (sex != null ? !sex.equals(clients.sex) : clients.sex != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (surname != null ? surname.hashCode() : 0);
        result = 31 * result + (surname2 != null ? surname2.hashCode() : 0);
        result = 31 * result + (document != null ? document.hashCode() : 0);
        result = 31 * result + (documentType != null ? documentType.hashCode() : 0);
        result = 31 * result + (birthday != null ? birthday.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        return result;
    }
}
