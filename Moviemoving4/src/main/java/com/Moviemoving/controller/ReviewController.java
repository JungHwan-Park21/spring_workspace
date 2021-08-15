package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.Moviemoving.domain.ReviewVO;
import com.Moviemoving.service.MovieService;
import com.Moviemoving.service.ReviewService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class ReviewController {
   
	private ReviewService service;
	
    @RequestMapping(value = "/contents", method = RequestMethod.POST)
    public String review(@ModelAttribute ReviewVO review) {
    	 System.out.println(review);
        return "contents";
    }
    
}
