package com.hankyung.domain.member;

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
public class CnslnDTO {
	private int mno;
	private String name;
	private String id;
	private String cnsln1;
	private String cnsln2;
	private String cnsln3;
	private String cnsln4;
	private String cnsln5;
	private String cnsln6;
	private Date cnsln1_date;
	private Date cnsln2_date;
	private Date cnsln3_date;
	private Date cnsln4_date;
	private Date cnsln5_date;
	private Date cnsln6_date;
	private String cnsln1_writer;
	private String cnsln2_writer;
	private String cnsln3_writer;
	private String cnsln4_writer;
	private String cnsln5_writer;
	private String cnsln6_writer;
	
	private String num;
	private String writer;
	private String content;

}
