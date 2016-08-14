package com.hostal.manager;

import com.hostal.dao.interfaces.PostsDaoInterface;
import com.hostal.persistence.Posts;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
@Named
public class PostManager {

    @Inject
    public PostsDaoInterface postDAO;

    public List<Posts> getAllPosts() {
        return postDAO.getAllPosts();
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


}
