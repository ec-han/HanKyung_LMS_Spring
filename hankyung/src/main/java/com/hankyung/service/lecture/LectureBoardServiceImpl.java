package com.hankyung.service.lecture;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureBoardDTO;
import com.hankyung.persistence.lecture.LectureBoardDAO;

import lombok.extern.slf4j.Slf4j;
@Service
@Slf4j
public class LectureBoardServiceImpl implements LectureBoardService{
	@Inject
	private LectureBoardDAO lbDao;
	
	@Override
	public List<LectureBoardDTO> list(String viewoption, String search_option, String keyword, int start,
			int end) {
		return  lbDao.list(viewoption, search_option, keyword, start, end);
	}

	@Override
	public int create(LectureBoardDTO lbDto) {
		return  lbDao.create(lbDto);
	}

	@Override
	public int update(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void increaseViewCnt(LectureBoardDTO lbDto, HttpSession session) {
		long update_time=0;
		int bno = lbDto.getBno();
		if(session.getAttribute("update_time_"+bno)!=null) {
			// 최근에 조회수를 올린 시간
			update_time = (long)session.getAttribute("update_time_"+bno);
		}
		long current_time = System.currentTimeMillis();
		
		// 일정 시간이 경과한 후 조회수 증가 처리
		if(current_time - update_time > 24*60*60*1000) {
			// 조회수 증가 처리
			lbDao.increaseViewCnt(lbDto);
			
			// 조회수를 올린 시간 저장
			session.setAttribute("update_time_"+bno, current_time);
		    log.info("update_time_"+update_time+"current_time_"+current_time);
		}
		
	}

	@Override
	public int delete(LectureBoardDTO lbDto) {
		// TODO Auto-generated method stub
		return lbDao.delete(lbDto);
	}

	@Override
	public int countArticle(String viewoption, String search_option, String keyword) {
		return lbDao.countArticle(viewoption, search_option, keyword);
	}

	@Override
	public LectureBoardDTO read(LectureBoardDTO lbDto) {
		return lbDao.read(lbDto);
	}

}
