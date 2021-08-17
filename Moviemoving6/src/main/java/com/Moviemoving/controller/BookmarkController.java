package com.Moviemoving.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Moviemoving.domain.BookmarkVO;
import com.Moviemoving.domain.MovieVO;
import com.Moviemoving.mapper.BookmarkMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class BookmarkController {
	
	
	private BookmarkMapper mapper;
	
	
	@RequestMapping(value = "/mypage", method = RequestMethod.GET)
    public String index(Principal principal, Model model) {
        // 현재 사용자
        int currUserId = userMapper.selectUserByEmail(principal.getName()).getId();
        // 카트에
        BookmarkVO cart = userMapper.getCart(currUserId);
        if (cart != null) {
            // 담긴 아이템
            List<MovieVO> items = BookmarkMapper.getItems(cart);
            for (MovieVO i : items) {
                i.setBook(BookmarkMapper.getBook(i.MovieInfo_no())); // 아이템이 가리키는 책
            }
            model.addAttribute("Bookmark", Bookmark);
            model.addAttribute("items", items);
        }
        return "mypage";
    }
    @RequestMapping(value = "/contents", method = RequestMethod.POST)
    public String add(@ModelAttribute ItemVO item, Principal principal) {
        // 현재 사용자
        UserVO currentUser = userMapper.selectUserByEmail(principal.getName());
        // (현재 사용자 소유) 번호를 아이템에 저장
        if (!userMapper.hasCart(CartVO.SHOPPING)) {
            int cartId = cartMapper.create(new CartVO(CartVO.SHOPPING, currentUser.getId()));
            item.setCart_id(cartId);
        } else {
            item.setCart_id(userMapper.getCart(currentUser.getId()).getId());
        }
        // 쇼핑카트에 아이템을 담음
        BookmarkMapper.add(item);
        return "redirect:/contents";
    }
}
