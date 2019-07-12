package com.hankyung.domain.lecture;

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
public class LectureLessonDTO {
	private int class_no;
	private String class_title;
	private String class_time;
	private String class_content;
	private String class_target;
	private int lno;
}
