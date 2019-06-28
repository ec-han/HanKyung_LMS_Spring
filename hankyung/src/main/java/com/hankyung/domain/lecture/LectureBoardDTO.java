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
	private Date regdate;
}
