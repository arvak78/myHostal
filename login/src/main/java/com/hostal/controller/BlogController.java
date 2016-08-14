package com.hostal.controller;

import com.hostal.form.PostsForm;
import com.hostal.manager.CategoriesManager;
import com.hostal.manager.PostManager;
import com.hostal.persistence.Categories;
import com.hostal.persistence.Posts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
@Controller
@RequestMapping("/blog")
//@Named
public class BlogController {


    @Autowired
    private PostManager postManager;
    @Autowired
    private CategoriesManager categoriesManager;

    private List<Posts> allPosts;
    private List<Posts> categoryPosts;
    private List<Categories> categories;
    private Posts selectedPost;

    @PostConstruct
    private void init() {
        allPosts = postManager.getAllPosts();
    }

    public List<Posts> getAllPosts() {
        return allPosts;
    }

    public void setAllPosts(List<Posts> allPosts) {
        this.allPosts = allPosts;
    }

    @RequestMapping("/posts")
    public ModelAndView showPosts() {

        PostsForm postsForm = getPostForm();

        return new ModelAndView("layout", "postsForm", postsForm);
    }

    @RequestMapping(value = "/showcategory")
    public ModelAndView showCategoryPosts() {

        PostsForm postsForm = new PostsForm();
        postsForm.setPosts(categoryPosts);
        postsForm.setCategories(categories);
        postsForm.setSelectedPost(selectedPost);

        return new ModelAndView("blog", "postsForm",postsForm);
    }

    @RequestMapping("/post")
    public ModelAndView post() {

        PostsForm postsForm = new PostsForm();
        postsForm.setPosts(allPosts);
        postsForm.setCategories(categories);
        postsForm.setSelectedPost(selectedPost);

        return new ModelAndView("post", "postsForm", postsForm);
    }

    @ModelAttribute("timeline")
    public PostsForm getPostForm() {

        categories = categoriesManager.getCategories();

        PostsForm postsForm = new PostsForm();
        postsForm.setPosts(allPosts);
        postsForm.setCategories(categories);

        return postsForm;
    }

    @RequestMapping(value="/paint/{id}", method = RequestMethod.POST)
    @ResponseBody
    @ModelAttribute("mipost")
    public ModelAndView paintSelectedPost(@ModelAttribute("timeline") PostsForm post, ModelMap model, @PathVariable int id) {

        for (Posts mipost : post.getPosts()) {
            if (id == mipost.getId()) {
                selectedPost = mipost;
                postManager.addVisit(id);
            }
        }

        return new ModelAndView("blog");

    }

    @RequestMapping(value="/search", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView searchSomething(@RequestParam String search) {

        List<Posts> postsList = postManager.searchByWord(search);
        PostsForm postsForm = new PostsForm();
        postsForm.setPosts(postsList);
        postsForm.setCategories(categories);

        postsForm.setSearchWord(search);

        return new ModelAndView("layout", "postsForm", postsForm);
    }

    @RequestMapping(value="/categoryPost/{category}", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getCategoriesPost(@PathVariable String category) {

        PostsForm postsForm = new PostsForm();
        categoryPosts = postManager.searchByCategories(category);
        postsForm.setPosts(categoryPosts);
        postsForm.setSelectedPost(selectedPost);
        postsForm.setCategories(categories);

        return new ModelAndView("blog", "postsForm", postsForm);
    }

}
