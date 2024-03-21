package com.club.backend.dto.club;

import lombok.*;

import java.util.List;

@Getter
@Setter
public class ModalDTO {
    // Modal
    private String modalTitle;
    private String modalContents;
    private List<String> modalImage;
    private String modalLocationImage;

    // Schedule
    private Boolean scheduleUse;
}