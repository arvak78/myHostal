package com.hostal.controller;

import com.hostal.manager.PostManager;
import com.hostal.persistence.Posts;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.PostConstruct;
import javax.inject.Named;
import java.util.List;

/**
 * Created by Manel on 14/04/2016.
 */
@Controller
//@RequestMapping("/blog")
//@Named
public class BlogController {

    @Autowired
    private PostManager postManager;

    private List<Posts> allPosts;

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

    @RequestMapping(value="/paint", method = RequestMethod.POST)
    public ModelAndView paintSelectedPost(ModelMap model,
                                  @ModelAttribute("post") Posts post) {


        System.out.println();

        String message = "aaa";


        return new ModelAndView("starter", "message", message);

    }


}
