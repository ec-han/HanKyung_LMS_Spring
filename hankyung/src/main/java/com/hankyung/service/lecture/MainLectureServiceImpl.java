package com.hankyung.service.lecture;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.hankyung.persistence.lecture.MainLectureDAO;

@Service
public class MainLectureServiceImpl implements MainLectureService {
	
	@Inject
	private MainLectureDAO mDao;
	
	
}
