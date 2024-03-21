package com.club.backend.dto.club;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ClubDTO {
    // Club
    private int clubId; // 동아리 아이디
    private String clubName; // 동아리 이름

    // Property
    private List<String> tags; // 태그
    private int initialLikes; // 좋아요 수
    private String imageUrl; // 이미지 Url
    private String iconUrl; // 아이콘 Url


}
