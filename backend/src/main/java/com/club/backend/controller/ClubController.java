// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.controller;

import com.club.backend.dto.club.ClubDTO;
import com.club.backend.service.club.ClubService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/clubs")
public class ClubController {
    private final ClubService clubService;

    @GetMapping("/all") // 동아리 전체 요청
    public List<ClubDTO> getClubsByAll() {
        return clubService.getClubAllSearch();
    }

    @GetMapping("/{typeId}") // 동아리 소속 요청
    public List<ClubDTO> getClubsByType(@PathVariable("typeId") int typeId) {
        return clubService.getClubTypeSearch(typeId);
    }
}