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
public class MemberDTO {
	private String name;
	private String id;
	private String email;
	private String phone;
	private String pw;
	private Date regdate;
}
