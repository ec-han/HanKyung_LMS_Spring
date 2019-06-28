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
public class LectureDTO {
	private int lno;
	private String id;
	private String lname;
	private String lcode;
	private String tname;
	private String content;
	private String ltype;
	private int totalmem;
	private int rgstrmem;
	private int nowmem;
	private int supmoney;
	private int price;
	private String limg;
	private Date startdate;
	private Date enddate;
}
