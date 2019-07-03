package com.hankyung.controller.cart;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hankyung.service.cart.CartService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("cart/*")
public class CartController {

	@Inject
	private CartService service;
	
	@GetMapping("/create")
	public String create(HttpSession session, Model model) {
		log.info(">>>>> 장바구니 DB에 등록");
		service.create(session);
		session.removeAttribute("list");
		return "redirect:/";
	}
}
