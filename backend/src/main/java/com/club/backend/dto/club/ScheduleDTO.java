package com.club.backend.dto.club;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@JsonInclude(JsonInclude.Include.NON_NULL)
public class ScheduleDTO {
    private int performanceId;
    private int clubId;
    private String clubName;
    private String field;
    private String iconUrl;
    private String imageUrl;
    private String part;
    private String location;
    private String category;
    private LocalDateTime eventTime;
    private LocalDateTime eventEndTime;
}
