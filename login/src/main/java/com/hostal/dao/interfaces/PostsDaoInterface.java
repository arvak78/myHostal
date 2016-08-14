package com.hostal.dao.interfaces;

import com.hostal.persistence.Posts;
import org.springframework.data.domain.PageRequest;

import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
public interface PostsDaoInterface {

    public List<Posts> getAllPosts(PageRequest pageRequest);
    public List<Posts> searchPostsByWord(String search);
    public List<Posts> getRecentPosts(int limit);
    public List<Posts> getPostsByCategory(String category);
    public void addVisit(int id);

}
