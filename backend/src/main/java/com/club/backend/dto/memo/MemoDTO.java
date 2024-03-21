package com.club.backend.dto.memo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class MemoDTO {

    private Long memoId;
    private String major;
    private String classOf;
    private Boolean anonymous;
    private String studentName;
    private String content;
    private String color;
}
