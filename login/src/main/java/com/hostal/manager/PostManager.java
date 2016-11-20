package com.hostal.manager;

import com.hostal.dao.interfaces.PostsDaoInterface;
import com.hostal.persistence.Posts;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
@Named(value = "postManager")
public class PostManager {

    @Inject
    public PostsDaoInterface postDAO;

    public static final int MAX_PAGE_POSTS = 6;

    public List<Posts> getAllPosts() {
        return postDAO.getAllPosts();
    }

    public List<Posts> getPagePosts(int page) {
        return postDAO.getPagePosts(page);
    }

    public List<Posts> searchByWord(String search) {
        return postDAO.searchPostsByWord(search);
    }

    public List<Posts> searchByCategories(String category) {
        return postDAO.getPostsByCategory(category);
    }

    public void addVisit(int id) {
        postDAO.addVisit(id);
    }

    public void savePost(Posts post) {
        postDAO.savePost(post);
    }


}
