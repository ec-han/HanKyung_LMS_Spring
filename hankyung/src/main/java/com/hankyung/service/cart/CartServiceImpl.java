package com.hankyung.service.cart;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.hankyung.persistence.cart.CartDAO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CartServiceImpl implements CartService {

	@Inject
	private CartDAO cDao;
	
	@Override
	public void create(HttpSession session) {
		cDao.create(session);
	}

}
