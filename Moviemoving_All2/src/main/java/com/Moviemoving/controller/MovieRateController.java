package com.Moviemoving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieRateVO;
import com.Moviemoving.service.MovieRateService;
import com.Moviemoving.service.UserService;

import lombok.Setter;

@Controller
public class MovieRateController {
	@Setter(onMethod_ = @Autowired)
	private MovieRateService MovieRateService;
	
	@Setter(onMethod_ = @Autowired)
	private UserService UserService;
	
	//평가하기 등록
	@PostMapping("/insertMovieRate")
	public String insertMovieRate (MovieRateVO MovieRate, RedirectAttributes rttr) {
			
		MovieRateService.insertMovieRate(MovieRate);
		rttr.addFlashAttribute("RateResult", MovieRate.getMovieInfo_no());
			
		return "redirect:/movie" + MovieRate.getListLink();
			
	}
}
