package com.Moviemoving.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.service.MovieRateService;
import com.Moviemoving.service.MovieService;

import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
public class MovieController {
	@Setter(onMethod_ = @Autowired)
	private MovieService service;	
	@Setter(onMethod_ = @Autowired)
	private MovieRateService service2;
	
	@GetMapping("/")
	public String mainList(Model model) {
		log.info("메인상세");
		model.addAttribute("movieBest", service.movieBest());
		model.addAttribute("netflix", service.movieNetflix());
		model.addAttribute("watcha", service.movieWatcha());
		model.addAttribute("wavve", service.movieWavve());
		return "index";
	}	
	
	//영화상세
	@GetMapping("/movie")
	public String getMovie (@RequestParam("MovieInfo_no") Long MovieInfo_no, CategoryListVO cateList, Model model) {
		log.info("영화상세");
		model.addAttribute("movie", service.read(MovieInfo_no));
		model.addAttribute("cateList", service.getCategory(MovieInfo_no));
		model.addAttribute("MovieRate", service2.movie_movieRate(MovieInfo_no));
		return "contents";
	}	
	
	//admin
	@GetMapping("/admin/movieList")
	public void list(Model model) {
		log.info("리스트");
		model.addAttribute("movieList", service.getList());
	}
}
