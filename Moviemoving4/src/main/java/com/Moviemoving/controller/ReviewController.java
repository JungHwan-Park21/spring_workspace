package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Moviemoving.domain.ReviewVO;

@Controller
public class ReviewController {
    @ResponseBody
    @RequestMapping(value = "/review", method = RequestMethod.POST)
    public String review(@ModelAttribute ReviewVO review) {
        return review.toString();
    }
}
