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
public class ReplyDTO {
	private int rno;
	private String content;
	private String writer;
	private Date regdate;
	private int bno;
	
}
