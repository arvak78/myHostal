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


}
