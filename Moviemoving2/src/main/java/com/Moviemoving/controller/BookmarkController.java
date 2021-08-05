package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Moviemoving.service.BookmarkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/Bookmark/*")
@AllArgsConstructor
public class BookmarkController {
	private BookmarkService service; //자동주입
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("....list");
		model.addAttribute("list",service.insertBookmark());
	}

}

