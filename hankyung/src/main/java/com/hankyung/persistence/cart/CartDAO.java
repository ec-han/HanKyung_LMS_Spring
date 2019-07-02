package com.hankyung.persistence.cart;

import javax.servlet.http.HttpSession;

public interface CartDAO {
	public void create(HttpSession session);
}
