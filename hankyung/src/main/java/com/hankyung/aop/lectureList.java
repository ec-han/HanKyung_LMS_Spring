package com.hankyung.aop;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.service.lecture.LectureService;

import lombok.extern.slf4j.Slf4j;

// 로그 수집 작업을 하려면 모든 메서드에 해야 함
// 로그 수집은 중요한 업무이지만 핵심적인 업무는 아니고 공통적인 업무에 해당됨
// 공통적인 업무는 모든 class의 모든 method에 작성하지말고 Advice에 모아서 작성하고
// 세부적인 코드에서는 핵심업무에 집중하도록 처리

@Component // 스프링 beans로 등록되기 위한 설정
@Aspect    // AOP bean - 공통 업무를 지원하는 코드
@Slf4j
public class lectureList {
	// 포인트컷 - 실행 시점,
	// Around(메서드 실행 전후)
	// Before(메서드 실행 전)
	// After(메서드 실행 후)
	
	@Inject
	private LectureService service;
	
	// execution경로에 //는 하위패키지들이 다 들어갈 수 있다는 의미 
	// com.gaon.controller패키지 안에 있는 모든 컨트롤러 중에 Controller로 끝나는 클래스들 중 모든 메서드들
	@Around("execution(* com.hankyung.controller.cart.CartController.*(..))"
			+ " or execution(* com.hankyung.controller.lecture.LectureController.*(..))")
	public Object lectureList(ProceedingJoinPoint joinPoint) throws Throwable {
		// 메서드 시작시간
		long start = System.currentTimeMillis();
		
		
		// joinPoint.proceed(); 줄을 기준으로
		// ↑위에가 호출 전
		// ↓아래가 호출 후
		Object result = joinPoint.proceed(); // 핵심업무 실행
		
		// joinPoint.getSignature().getDeclaringTypeName():메서드이름을 가져온다.(String으로)
		// if(joinPoint.getSignature().getDeclaringTypeName().contains("made")){}:"made"라는 이름을 가진 모든 메서드들이 실행
		HttpSession session;
		for (Object object : joinPoint.getArgs()) {
			// joinPoint:around 범위 내 실행이 되는 대상 메서드들의 모든 정보를 가지고 있음
			// joinPoint.getArgs():대상 메서드가 가지고 있는 매개변수를 모두 가지고 있음
			// 갯수도 정해지지 않아서(배열) 타입도 정해지지 않아서(Object타입) 그래서 Object[]
			// instanceof:자식 객체의 원래 타입을 알려줌
			// object가 HttpSession타입일 경우 true, 아니면 false를 반환
			if(object instanceof HttpSession) {
				session = (HttpSession)object;
				if(session.getAttribute("myList")!=null) {
					session.removeAttribute("myList");
					List<LectureDTO> list = service.myList(session);
					session.setAttribute("myList", list);
				}
			}
		}
		return result;
	}
}
