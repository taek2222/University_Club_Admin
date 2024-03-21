package com.club.backend.dto.join;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class JoinModalDTO {
    private List<String> modalImage; // 모달 이미지
    private String modalContents; // 모달 내용
    private List<String> joinUrl; // 모달 Url
}
