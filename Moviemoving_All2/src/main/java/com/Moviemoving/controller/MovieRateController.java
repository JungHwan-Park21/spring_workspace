package com.Moviemoving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.Moviemoving.service.MovieRateService;
import com.Moviemoving.service.UserService;

import lombok.Setter;

@Controller
public class MovieRateController {
	@Setter(onMethod_ = @Autowired)
	private MovieRateService MypageService;
	
	@Setter(onMethod_ = @Autowired)
	private UserService UserService;
	
	
}
