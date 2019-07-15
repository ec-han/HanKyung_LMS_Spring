package com.hankyung.scheduler;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.hankyung.domain.member.MemberDTO;
import com.hankyung.scheduler.Scheduler;
import com.hankyung.service.member.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Scheduler {

	@Inject 
	private MemberService service;
	
	// (cron = "초 분 시 일 월 요일")
	@Transactional
	//@Scheduled(cron = "0 00 * * * *")
	@Scheduled(cron = "0 00 12 * * *")
	public void cronTest() throws IOException {
		String type = "2";
		List<MemberDTO> list = service.list(type);
		
		for (MemberDTO mDTO : list) {
			log.info(mDTO.toString());
		}
		
	}

}


