// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.controller;

import com.club.backend.dto.club.ModalDTO;
import com.club.backend.service.club.ModalService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/club")
public class ModalController {
    private final ModalService modalService;

    @GetMapping("/modal/{clubId}") // 동아리 모달 요청
    public ModalDTO getClubsByModal(@PathVariable("clubId") int clubId) {
        return modalService.getClubModalSearch(clubId);
    }
}
