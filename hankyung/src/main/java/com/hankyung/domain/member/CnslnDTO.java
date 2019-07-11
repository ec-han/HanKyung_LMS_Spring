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
	private Date regdate;
	private Date mdfctDate;
}
