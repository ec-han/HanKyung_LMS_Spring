package com.hankyung.service.lecture;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hankyung.domain.lecture.LectureDTO;
import com.hankyung.persistence.lecture.MainLectureDAO;

@Service
public class MainLectureServiceImpl implements MainLectureService {
	
	@Inject
	private MainLectureDAO mDao;

	@Override
	public List<LectureDTO> LectureList() {
		return mDao.lectureList();
	}

	@Override
	public void LectureInsert() {
	}
	
	
}
