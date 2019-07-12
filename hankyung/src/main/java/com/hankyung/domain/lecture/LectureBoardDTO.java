package com.hankyung.domain.lecture;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@NoArgsConstructor
@AllArgsConstructor
@Getter		
@Setter		
@ToString
public class LectureBoardDTO {
	private int bno;
	private int lbnum;
	private String btype;
	private String title;
	private String content;
	private String writer;
	private int viewcnt;
	private int replycnt;
	private String[] files; // 첨부파일 이름 배열
	private Date regdate;
	private int ref;	// 게시글 그룹
	private int re_step;	// 그룹 내 정렬(출력) 순서
	private int re_level;	// 답글 Level ex) RE: / RE:RE:
}
