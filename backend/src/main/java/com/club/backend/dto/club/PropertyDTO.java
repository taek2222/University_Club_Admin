package com.club.backend.dto.club;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class PropertyDTO {
    private int clubId;
    private List<String> tags;
    private int initialLikes;
    private String imageUrl;
    private String iconUrl;
}
