package com.Moviemoving.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Moviemoving.domain.UserVO;
import com.Moviemoving.service.UserService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@Controller
@Log4j
public class UserController {

	@Autowired 
    private BCryptPasswordEncoder pwEncoder;
	
	@Setter(onMethod_ = @Autowired)
	private UserService service;
	
	//회원가입
	@GetMapping("/register")
	public void registerup() {
		log.info(" register method");
	}
	
	@PostMapping("/register")
	public String registerPost(UserVO vo, RedirectAttributes rttr) {
	
		log.info(vo);
		String inputPass = vo.getUser_pw();
		String pw = pwEncoder.encode(inputPass);
		vo.setUser_pw(pw);
		service.insertUser(vo);
		return "redirect:/";
	}
	
	//로그인
	@GetMapping("/login")
	public void loginInput(String error, String logout, Model model) {
		log.info("error: " + error);
		log.info("logout: " + logout);
		
		if(error != null) {
			model.addAttribute("error", "Login Error");
		}
		
		if (logout != null) {
			model.addAttribute("logout", "Logout!");
		}
	}

}
