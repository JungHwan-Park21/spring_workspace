package com.Moviemoving.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.UserVO;
import com.Moviemoving.service.MypageService;
import com.Moviemoving.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MypageController {
	@Setter(onMethod_ = @Autowired)
	private MypageService MypageService;
	
	@Setter(onMethod_ = @Autowired)
	private UserService UserService;	
	
	@GetMapping("/mypage")
	@PreAuthorize("isAuthenticated()")
	public void info(Principal principal, Model model) {
		UserVO uservo = UserService.read(principal.getName());
		String user_id = uservo.getUser_id();
	
		model.addAttribute("uservo", uservo);
		model.addAttribute("moviemark",
				MypageService.movie_bookmark(user_id));
		model.addAttribute("tvmarke", MypageService.tv_bookmark(user_id));
	}
	
	
	//북마크 등록
	@PostMapping("/insertBookmark")
	public String insertBookmark (BookmarkVO bookmark, RedirectAttributes rttr) {
		
		MypageService.insertBookmark(bookmark);
		rttr.addFlashAttribute("bookResult", bookmark.getMovieInfo_no());
		
		return "redirect:/movie" + bookmark.getListLink();
		
	}
	//북마크 삭제
	@PostMapping("/removeBookmark")
	public String removeBookmark (BookmarkVO bookmark, RedirectAttributes rttr) {
		
		MypageService.deleteBookmark(bookmark);
		
		return "redirect:/movie" + bookmark.getListLink();		
	}
	
	//북마크 중복검사
	@ResponseBody
	@PostMapping("/bookmarkChk")
	public String bookmarkChk(String User_id, int MovieInfo_no) throws Exception{
		
		log.info("Ajax 진입됨" + "아이디 + " + User_id + "영화번호 : " + MovieInfo_no);
		
		int result = MypageService.bookmarkChk(User_id, MovieInfo_no);
		
		if (result == 0) {
			return "success";
		} else {
			return "fail";
		}
	}
}
