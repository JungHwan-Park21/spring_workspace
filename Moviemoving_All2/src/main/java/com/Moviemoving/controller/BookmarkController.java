package com.Moviemoving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.service.BookmarkService;
import com.Moviemoving.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class BookmarkController {
	@Setter(onMethod_ = @Autowired)
	private UserService service;
	@Setter(onMethod_ = @Autowired)
	private BookmarkService service1;
	
	
	/*
	 * @GetMapping("/") public String bookmarkList(Model model) { log.info("보고싶어요");
	 * model.addAttribute("Bookmark", service1.BookmarkList()); return "mypage"; }
	 */
	
	@GetMapping("/register")
	public void register() {
	}	
	
	@PostMapping("/register")
	@PreAuthorize("isAuthenticated()")
	public String register(BookmarkVO bookmark, RedirectAttributes rttr) {
		
		if(bookmark.getBookmarkList() != null) {
			bookmark.getBookmarkList().forEach(attach -> log.info(attach));
		}
		service.read(bookmark);
		rttr.addFlashAttribute("result",bookmark.getMovieInfo_no());
		return "redirect:/mypage";
	}
}
