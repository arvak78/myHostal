package com.hostal.controller;

import com.hostal.form.PostsForm;
import com.hostal.manager.CategoriesManager;
import com.hostal.manager.PostManager;
import com.hostal.persistence.Posts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;
import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
@Controller
@RequestMapping("/blog")
public class BlogController {


    @Autowired
    private PostManager postManager;
    @Autowired
    private CategoriesManager categoriesManager;


    private PostsForm postsForm;

    @PostConstruct
    private void init() {
        postsForm = new PostsForm();
        postsForm.setCategories(categoriesManager.getCategories());
    }

    @RequestMapping("/posts")
    public ModelAndView showPosts() {

        postsForm.setPosts(new PagedListHolder<Posts>(postManager.getAllPosts(1)));
        postsForm.setSearchWord(null);

        ModelAndView modelAndView = new ModelAndView("layout", "postsForm", postsForm);

        return modelAndView;
    }

    @RequestMapping(value = "/showcategory")
    public ModelAndView showCategoryPosts() {

        return new ModelAndView("blog", "postsForm", postsForm);
    }

    @RequestMapping("/post")
    public ModelAndView post() {

        return new ModelAndView("post", "postsForm", postsForm);
    }

    @RequestMapping(value="/paint/{id}", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView paintSelectedPost(@PathVariable int id) {


        for (Posts mipost : postsForm.getPosts().getPageList()) {
            if (id == mipost.getId()) {
                postsForm.setSelectedPost(mipost);
                postManager.addVisit(id);
            }
        }

        return new ModelAndView("blog", "postsForm", postsForm);

    }

    @RequestMapping(value="/search", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView searchSomething(@RequestParam String search) {

        postsForm.setPosts(new PagedListHolder<Posts>(postManager.searchByWord(search)));
        postsForm.setSearchWord(search);

        return new ModelAndView("layout", "postsForm", postsForm);
    }

    @RequestMapping(value="/categoryPost/{category}", method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView getCategoriesPost(@PathVariable String category) {

        postsForm.setPosts(new PagedListHolder<Posts>(postManager.searchByCategories(category)));

        return new ModelAndView("blog", "postsForm", postsForm);
    }

}
