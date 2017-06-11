package com.hostal.service;

import com.hostal.manager.PostManager;
import com.hostal.persistence.Posts;
import org.springframework.util.StringUtils;

import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;
import java.util.ArrayList;
import java.util.List;

@ManagedBean(name = "blogService")
@ApplicationScoped
public class BlogService {

    @ManagedProperty("#{postManager}")
    private PostManager postManager;
     

    public List<Posts> showAllPosts() {
        List<Posts> list = new ArrayList<Posts>();
        list = postManager.getAllPosts();

        resizePosts(list);

        return list;
    }

    public List<Posts> showPagePosts(int page) {

        List<Posts> list = new ArrayList<Posts>();
        list = postManager.getPagePosts(page);

        resizePosts(list);

        return list;

    }

    public void setPostManager(PostManager postManager) {
        this.postManager = postManager;
    }

    public void savePost(Posts post) {
        postManager.savePost(post);
    }

    private void resizePosts(List<Posts> list) {
        for (Posts post : list) {
            if (!StringUtils.isEmpty(post.getBody()))
                post.setBody(post.getBody().substring(0, Math.min(post.getBody().length(), 100)) + " ..." );
        }
    }
}