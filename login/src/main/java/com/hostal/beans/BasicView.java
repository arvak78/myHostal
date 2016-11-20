package com.hostal.beans;

import com.hostal.persistence.Posts;
import org.primefaces.event.SelectEvent;
import org.primefaces.event.UnselectEvent;

import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import javax.faces.bean.ViewScoped;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;
import java.io.Serializable;
import java.util.List;
 
@ManagedBean(name="dtBasicView")
@ViewScoped
public class BasicView implements Serializable {
     
    private List<Posts> posts;

    private List<Posts> selectedPosts;
    private Posts selectedPost;
    private Posts newPost;

    @ManagedProperty("#{blogService}")
    private BlogService service;
 
    @PostConstruct
    public void init() {
        posts = service.showAllPosts();
    }
     
    public List<Posts> getAllPosts() {
        return posts;
    }

    public List<Posts> getPagePosts() {
        return service.showPagePosts(0);
    }
 
    public void setService(BlogService service) {
        this.service = service;
    }

    public List<Posts> getSelectedPosts() {
        return selectedPosts;
    }

    public void setSelectedPosts(List<Posts> selectedPosts) {
        this.selectedPosts = selectedPosts;
    }

    public Posts getSelectedPost() {
        return selectedPost;
    }

    public void setSelectedPost(Posts selectedPost) {
        this.selectedPost = selectedPost;
    }

    public void onRowSelect(SelectEvent event) {
        FacesMessage msg = new FacesMessage("Post Selected", ((Posts) event.getObject()).getDescription());
        FacesContext.getCurrentInstance().addMessage(null, msg);
    }

    public void onRowUnselect(UnselectEvent event) {
        FacesMessage msg = new FacesMessage("Post Unselected", ((Posts) event.getObject()).getDescription());
        FacesContext.getCurrentInstance().addMessage(null, msg);
    }

    public void buttonAction(ActionEvent actionEvent) {
        addMessage("Welcome to Primefaces!!");
    }

    public void addMessage(String summary) {
        FacesMessage message = new FacesMessage(FacesMessage.SEVERITY_INFO, summary,  null);
        FacesContext.getCurrentInstance().addMessage(null, message);
    }

    public void info(String msg) {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Info", msg));
    }

    public Posts getNewPost() {
        return newPost;
    }

    public void setNewPost(Posts newPost) {
        this.newPost = newPost;
    }

    public void savePost() {

        service.savePost(selectedPost);
        info("Post modificado");

    }
}