package com.hostal.controller;

import com.hostal.form.PostsForm;
import com.hostal.manager.PostManager;
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
    private List<Posts> allPosts;
    private Posts selectedPost;

    @PostConstruct
    private void init() {
        allPosts = postManager.getAllPosts();
    }

    public List<Posts> getAllPosts() {
        return allPosts;
    }

    @RequestMapping("/posts")
    public ModelAndView showPosts() {

        PostsForm postsForm = getPostForm();

        return new ModelAndView("layout", "postsForm", postsForm);
    }

    @RequestMapping("/post")
    public ModelAndView post() {

        return new ModelAndView("post", "post", selectedPost);
    }


    public void setAllPosts(List<Posts> allPosts) {
        this.allPosts = allPosts;
    }

    @ModelAttribute("timeline")
    public PostsForm getPostForm() {

        PostsForm postsForm = new PostsForm();
        postsForm.setPosts(allPosts);

        return postsForm;
    }

    @RequestMapping(value="/paint/{id}", method = RequestMethod.POST)
    @ResponseBody
    @ModelAttribute("mipost")
    public ModelAndView paintSelectedPost(@ModelAttribute("timeline") PostsForm post, ModelMap model, @PathVariable int id) {

        for (Posts mipost : post.getPosts()) {
            if (id == mipost.getId()) {
                selectedPost = mipost;
            }
        }

        return new ModelAndView("blog");

    }


}
