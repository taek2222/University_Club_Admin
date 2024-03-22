// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.controller;

import com.club.backend.dto.club.InitialLikesDTO;
import com.club.backend.service.club.InitialLikesService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/initialLikes")
public class InitialLikesController {
    private final InitialLikesService initialLikesService;

    @PatchMapping("/likes")
    public ResponseEntity<?> patchLikes(@RequestBody InitialLikesDTO dto) {
        int likes;

        if(dto.getIsLiked())
            likes = initialLikesService.likesUp(dto.getClubId());
        else
            likes = initialLikesService.likesDown(dto.getClubId());
        return ResponseEntity.ok(likes);
    }
}
