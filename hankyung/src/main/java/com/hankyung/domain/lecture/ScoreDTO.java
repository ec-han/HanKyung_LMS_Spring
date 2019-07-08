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
public class ScoreDTO {
    private String name; 
    private String id;
    private String lcode;
    private int sub_score1;
    private int sub_score2;
    private int sub_score3;
    private int sub_score4;
    private int sub_score5;
}
