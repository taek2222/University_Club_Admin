// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.controller;

import com.club.backend.dto.join.JoinDTO;
import com.club.backend.service.join.JoinService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/joins")
public class JoinController {
    private final JoinService joinService;

    @GetMapping("/all")
    public List<JoinDTO> getJoinsByAll() {
        return joinService.getJoinAllSearch();
    }
}
