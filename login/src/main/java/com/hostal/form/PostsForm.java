package com.hostal.form;

import com.hostal.persistence.Categories;
import com.hostal.persistence.Posts;
import org.springframework.beans.support.PagedListHolder;

import java.util.List;

/**
 * Created by Manel on 16/07/2016.
 */
public class PostsForm {

//    private List<Posts> posts;
    private PagedListHolder<Posts> posts;
    private List<Categories> categories;
    private String searchWord;
    private Posts selectedPost;

    public PagedListHolder<Posts> getPosts() {
        return posts;
    }

    public void setPosts(PagedListHolder<Posts> posts) {
        this.posts = posts;
    }

    public String getSearchWord() {
        return searchWord;
    }

    public void setSearchWord(String searchWord) {
        this.searchWord = searchWord;
    }

    public List<Categories> getCategories() {
        return categories;
    }

    public void setCategories(List<Categories> categories) {
        this.categories = categories;
    }

    public Posts getSelectedPost() {
        return selectedPost;
    }

    public void setSelectedPost(Posts selectedPost) {
        this.selectedPost = selectedPost;
    }
}
