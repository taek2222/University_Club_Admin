// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.controller;

import com.club.backend.dto.join.JoinModalDTO;
import com.club.backend.service.join.JoinModalService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/join")
public class JoinModalController {
    private final JoinModalService joinModalService;

    @GetMapping("/modal/{clubId}")
    public JoinModalDTO getJoinsByModal(@PathVariable("clubId") int clubId) {
        return joinModalService.getJoinModalSearch(clubId);
    }
}
