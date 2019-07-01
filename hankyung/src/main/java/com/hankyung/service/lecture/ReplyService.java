package com.hankyung.service.lecture;

import java.util.List;

import com.hankyung.domain.lecture.ReplyDTO;


public interface ReplyService {
	public List<ReplyDTO> list(int bno); // 댓글 목록 출력 
	public void create(ReplyDTO rDto);	// 댓글 등록
	public void delete(ReplyDTO rDto);	// 댓글 삭제 
}
