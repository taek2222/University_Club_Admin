package com.club.backend.controller;

import com.club.backend.dto.club.ModalDTO;
import com.club.backend.service.club.ModalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ModalController {

    @Autowired
    private ModalService modalService;

    @GetMapping("/club/modal/{clubId}") // 동아리 모달 요청
    public ModalDTO getClubsByModal(@PathVariable("clubId") int clubId) {
        return modalService.getClubModalSearch(clubId);
    }
}
