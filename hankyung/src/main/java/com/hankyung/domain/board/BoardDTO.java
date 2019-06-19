package com.hankyung.domain.board;

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
public class BoardDTO {
	private int bno;
	private int tnum;
	private String btype;
	private String title;
	private String content;
	private String writer;
	private int viewcnt;
	private Date regdate;

}
