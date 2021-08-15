package com.Moviemoving.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@GetMapping("/mypage")
	public void mypage() {}
	
	@GetMapping("/search")
	public void search() {}
	
	@GetMapping("/contents")
	public void Review() {}
}
