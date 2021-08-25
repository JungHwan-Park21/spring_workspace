package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Moviemoving.domain.CriteriaVO;
import com.Moviemoving.domain.pageVO;
import com.Moviemoving.service.SearchService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor // @Setter(onMethod_= {@Autowired})를 사용하면 쓸 필요 없음
public class SearchController {
	// 자동주입
	public SearchService service;

	@GetMapping("/search")
	// 페이징
	public void list(CriteriaVO cri, Model model) {
		log.info("list : " + cri);
		model.addAttribute("list", service.getListWithPaging(cri));
		// model.addAttribute("pageMaker", new pageVO(cri, 123));

		int total = service.getTotal();

		log.info("total : " + total);

		model.addAttribute("pageMaker", new pageVO(cri, total));
	}

	// 조회
	@GetMapping("/get")
	public void get(@RequestParam("MovieInfo_no") int movieInfo_no, Model model) {
		log.info("/get");
		model.addAttribute("movieInfo", service.get(movieInfo_no));
	}

}
