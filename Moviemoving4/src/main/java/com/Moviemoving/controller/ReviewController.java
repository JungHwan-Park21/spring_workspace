package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;

import com.Moviemoving.service.ReviewService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class ReviewController {
	
	private ReviewService service;
	
	@GetMapping("/contents/test")
	public @ResponseBody 
}
