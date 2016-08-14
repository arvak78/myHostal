package com.hostal.manager;

import com.hostal.dao.interfaces.PostsDaoInterface;
import com.hostal.persistence.Posts;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;

import javax.inject.Inject;
import javax.inject.Named;
import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
@Named
public class PostManager {

    public static final int PAGE_SIZE = 5;

    @Inject
    public PostsDaoInterface postDAO;

    public List<Posts> getAllPosts(Integer pageNumber) {

        PageRequest pageRequest =
                new PageRequest(pageNumber - 1, PAGE_SIZE, Sort.Direction.ASC, "startTime");

        return postDAO.getAllPosts(pageRequest);
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
