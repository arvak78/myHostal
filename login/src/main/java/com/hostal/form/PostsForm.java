package com.hostal.form;

import com.hostal.manager.PostManager;
import com.hostal.persistence.Categories;
import com.hostal.persistence.Posts;

import java.util.List;

/**
 * Created by Manel on 16/07/2016.
 */
public class PostsForm {

    public static final int MIDDLE_PAGINATION = 4;

    private List<Posts> posts;
    private List<Categories> categories;
    private String searchWord;
    private Posts selectedPost;

    // Pagination
    private int page;
    private int postsSize;
    private int initialPage;
    private int finalPage;

    public List<Posts> getPosts() {
        return posts;
    }

    public void setPosts(List<Posts> posts) {
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

    public int getPage() {
        return page;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setPostsSize(int postsSize) {
        this.postsSize = postsSize;
    }

    public int getInitialPage() {
        return initialPage;
    }


    public int getFinalPage() {
        return finalPage;
    }

    public void calcPagination() {

        int mod = postsSize % PostManager.MAX_PAGE_POSTS;
        int div = postsSize / PostManager.MAX_PAGE_POSTS;
        int maxNumPage = mod == 0 ? div : div + 1;

        int initialPosition     = page - MIDDLE_PAGINATION;
        int finalPosition       = page + MIDDLE_PAGINATION;

        boolean initialOverflow = initialPosition < 1 ? true : false;
        boolean finalOverflow   = finalPosition > maxNumPage ? true : false;

        if (initialOverflow && !finalOverflow) {
            finalPage = finalPosition + (+initialPosition) > maxNumPage ?
                    finalPosition : finalPosition + (+initialPosition);
            initialPage = 1;
        } else if (!initialOverflow && finalOverflow) {
            initialPage = initialPosition - (maxNumPage - finalPosition);
            finalPage = maxNumPage;
        } else if (initialOverflow && finalOverflow) {
            initialPage = 1;
            finalPage = maxNumPage;
        }
    }
}
