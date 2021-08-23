package com.Moviemoving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Moviemoving.domain.MovieRateVO;
import com.Moviemoving.service.MovieRateService;
import com.Moviemoving.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
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
	
	/*
	 * @GetMapping("/contents") public void list(@RequestParam("MovieInfo_no") int
	 * MovieInfo_no, Model model) { log.info("후기용:"+MovieInfo_no);
	 * model.addAttribute("MovieRate",
	 * MovieRateService.movie_movieRate(MovieInfo_no)); }
	 */
}