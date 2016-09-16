package com.hostal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TilesController {
	
	@RequestMapping(value = "/template", method = RequestMethod.GET)
	public void template(){
		System.out.println("");
	}

}