package com.hostal.dao.interfaces;

import com.hostal.persistence.Posts;

import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
public interface PostsDaoInterface {

    public List<Posts> getAllPosts();
    public List<Posts> getPagePosts(int page);
    public List<Posts> searchPostsByWord(String search);
    public List<Posts> getRecentPosts(int limit);
    public List<Posts> getPostsByCategory(String category);
    public void addVisit(int id);
    public void savePost(Posts posts);

}
