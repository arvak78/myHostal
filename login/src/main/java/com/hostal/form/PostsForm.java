package com.hostal.form;

import com.hostal.persistence.Posts;

import java.util.List;

/**
 * Created by Manel on 16/07/2016.
 */
public class PostsForm {

    private List<Posts> posts;

    public List<Posts> getPosts() {
        return posts;
    }

    public void setPosts(List<Posts> posts) {
        this.posts = posts;
    }
}
