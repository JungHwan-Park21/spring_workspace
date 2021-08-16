package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.Moviemoving.service.BookmarkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class BookmarkController {
	
	
	private BookmarkService service;		
	
	@GetMapping("/")
	public String mainList(Model model) {
		log.info("보고싶어요");
		model.addAttribute("img",service.MovieInfo_no());
		model.addAttribute("title", service.MovieInfo_no());
		return "mypage";
	}	
}
