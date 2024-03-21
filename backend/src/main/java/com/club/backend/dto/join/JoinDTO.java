package com.club.backend.dto.join;


import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
public class JoinDTO {
    // Join
    private int clubId; // 동아리 아이디
    private String iconImage; // 동아리 홍보 이미지
    private String title; // 동아리 홍보 제목
    private List<Boolean> paths; // 동아리 가입 경로

    // Term
    private String eventDate; // 동아리 홍보 기간

    // Club
    private String clubName; // 동아리 이름

    // Type
    private String field; // 동아리 종류
}
