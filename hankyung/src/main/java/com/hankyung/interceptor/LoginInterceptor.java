package com.hankyung.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import org.springframework.web.servlet.support.RequestContextUtils;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class LoginInterceptor extends HandlerInterceptorAdapter {
	
	// 메인액션 실행되기 전
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(); // 세션 오픈
		
		if (session.getAttribute("id") == null) {
			log.info("로그인 해주세요!!");
			String referer = request.getHeader("referer");
			String uri = request.getRequestURI();
			String query = request.getQueryString();
			
			if (query == null || query.equals("null")) {
				query = "";
			} else {
				query = "?" + query;
			}
			
			// 0번지부터 시작함
			int index = referer.lastIndexOf("/");
			int length = referer.length();
			String url = referer.substring(index, length);
			log.info(">>>>> 수정된 URL : " + url);
			
			if (url.equals("/create")) {
				response.sendRedirect(request.getContextPath() + "/board/list");
				return false;
			}
			
			// Login 페이지로 이동
			FlashMap flashMap = RequestContextUtils.getOutputFlashMap(request);
			flashMap.put("message", "nologin");
			flashMap.put("uri", (uri+query));
			log.info(">>>>> URI : " + (uri+query));
			
			RequestContextUtils.saveOutputFlashMap(referer, request, response);
			response.sendRedirect(referer);
			
			return false;
		} else {
			log.info(">>>>> 통과");
			return true;
		}
	}
	
	// 메인액션 실행 된 후
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		super.postHandle(request, response, handler, modelAndView);
	}
	
}
