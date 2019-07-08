package com.hankyung.domain.lecture;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class SubjectDTO {
    private String lcode; 
    private String lname;
    private String subject1;
    private String subject2;
    private String subject3;
    private String subject4;
    private String subject5;
}
