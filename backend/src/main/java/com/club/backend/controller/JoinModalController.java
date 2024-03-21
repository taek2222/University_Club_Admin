package com.club.backend.controller;

import com.club.backend.dto.join.JoinModalDTO;
import com.club.backend.service.join.JoinModalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JoinModalController {

    @Autowired
    private JoinModalService joinModalService;

    @GetMapping("/join/modal/{clubId}")
    public JoinModalDTO getJoinsByModal(@PathVariable("clubId") int clubId) {
        return joinModalService.getJoinModalSearch(clubId);
    }
}
