package com.club.backend.dto.club;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InitialLikesDTO {
    private int clubId;
    private Boolean isLiked;
}