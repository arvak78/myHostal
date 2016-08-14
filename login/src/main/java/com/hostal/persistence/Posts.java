package com.hostal.persistence;

import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Manel on 14/04/2016.
 */
@Entity
public class Posts {
    private int id;
    private String user;
    private String description;
    private String body;
    private int visits;
    private String urlImage;
    private Categories categories;


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
    @Column(name = "user")
    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "body")
    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    @Basic
    @Column(name = "visits")
    public int getVisits() {
        return visits;
    }

    public void setVisits(int visits) {
        this.visits = visits;
    }

    @Basic
    @Column(name = "urlImage")
    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    @Basic
    @Column(name = "created")
    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    @OneToOne
    @JoinTable (name="categories",
            joinColumns=@JoinColumn(name="id"),
            inverseJoinColumns=@JoinColumn(name="id"))
    public Categories getCategories() {
        return categories;
    }

    public void setCategories(Categories categories) {
        this.categories = categories;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Posts posts = (Posts) o;

        if (id != posts.id) return false;
        if (visits != posts.visits) return false;
        if (user != null ? !user.equals(posts.user) : posts.user != null) return false;
        if (description != null ? !description.equals(posts.description) : posts.description != null) return false;
        if (body != null ? !body.equals(posts.body) : posts.body != null) return false;
        if (urlImage != null ? !urlImage.equals(posts.urlImage) : posts.urlImage != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (user != null ? user.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (body != null ? body.hashCode() : 0);
        result = 31 * result + visits;
        result = 31 * result + (urlImage != null ? urlImage.hashCode() : 0);
        return result;
    }
}
