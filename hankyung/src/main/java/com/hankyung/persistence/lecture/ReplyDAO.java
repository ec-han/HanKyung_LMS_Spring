package com.hankyung.persistence.lecture;

import java.util.List;

import com.hankyung.domain.lecture.ReplyDTO;


public interface ReplyDAO {
	public List<ReplyDTO> list(int bno); // 댓글 목록 출력 
	public void create(ReplyDTO rDto);	// 댓글 등록
	public void update(int bno, String flag);	// 댓글 등록 시 댓글 갯수 증가 
	public void delete(int rno);	// 댓글 삭제 
}
