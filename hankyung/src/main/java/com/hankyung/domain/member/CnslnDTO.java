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
	private Date cnsln1_date;
	private String cnsln2;
	private Date cnsln2_date;
	private String cnsln3;
	private Date cnsln3_date;
	private String cnsln4;
	private Date cnsln4_date;
	private String cnsln5;
	private Date cnsln5_date;
	private String cnsln6;
	private Date cnsln6_date;	
}
