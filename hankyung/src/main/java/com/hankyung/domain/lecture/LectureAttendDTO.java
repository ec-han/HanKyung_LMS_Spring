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
public class LectureAttendDTO {
	 private String attend_ck;
	 private int lno;
	 private int class_no;
	 private String id;
}
