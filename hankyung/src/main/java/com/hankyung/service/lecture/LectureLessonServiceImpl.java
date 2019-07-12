package com.hankyung.service.lecture;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureLessonDTO;
import com.hankyung.persistence.lecture.LectureLessonDAO;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class LectureLessonServiceImpl implements LectureLessonService {
	@Inject
	private LectureLessonDAO llDao;
	
	@Override
	public List<LectureLessonDTO> list(int lno) {
		return llDao.list(lno);
	}

}
