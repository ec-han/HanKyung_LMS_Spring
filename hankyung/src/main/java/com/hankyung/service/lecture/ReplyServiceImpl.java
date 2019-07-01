package com.hankyung.service.lecture;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.hankyung.domain.lecture.ReplyDTO;
import com.hankyung.persistence.lecture.ReplyDAO;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Inject
	private ReplyDAO rDao;
	
	@Override
	public List<ReplyDTO> list(int bno) {
		return rDao.list(bno);
	}
	@Transactional
	@Override
	public void create(ReplyDTO rDto) {
		rDao.create(rDto);
		String flag="plus";	
		int bno = rDto.getBno(); 
		rDao.update(bno, flag);
	}
	@Transactional
	@Override
	public void delete(ReplyDTO rDto) {
		rDao.delete(rDto.getRno());// TODO Auto-generated method stub
		String flag="minus";
		int bno = rDto.getBno();
		rDao.update(bno, flag);
	}

}
