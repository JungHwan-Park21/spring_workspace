package com.Moviemoving.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Moviemoving.domain.CartVO;
import com.Moviemoving.domain.CategoryListVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.CartMapper;
import com.Moviemoving.service.CartService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class CartController {
	
	private CartService service;
	
		//마이페이지
		@GetMapping("/")
		public String getMovie (@RequestParam("User_id") int User_id, MovieVO titleimg, Model model) {
			log.info("마이페이지");
			model.addAttribute("cart", cart));
			model.addAttribute("items", items));
			return "mypage";
		}	
	
        
     
/*
 * @RequestMapping(value = "/carts/add", method = RequestMethod.POST) public
 * String add(@ModelAttribute ItemVO item, Principal principal) { // 현재 사용자
 * UserVO currentUser = userMapper.selectUserByEmail(principal.getName()); //
 * 쇼핑카트(현재 사용자 소유) 번호를 아이템에 저장 if (!userMapper.hasCart(CartVO.SHOPPING)) { int
 * cartId = cartMapper.create(new CartVO(CartVO.SHOPPING, currentUser.getId()));
 * item.setCart_id(cartId); } else {
 * item.setCart_id(userMapper.getCart(currentUser.getId()).getId()); } // 쇼핑카트에
 * 아이템을 담음 cartMapper.add(item); return "redirect:/carts"; }
 */

}
