package com.club.backend.controller;

import com.club.backend.dto.join.JoinDTO;
import com.club.backend.service.join.JoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class JoinController {
    @Autowired
    private JoinService joinService;

    @GetMapping("/joins/all")
    public List<JoinDTO> getJoinsByAll() {
        return joinService.getJoinAllSearch();
    }
}
