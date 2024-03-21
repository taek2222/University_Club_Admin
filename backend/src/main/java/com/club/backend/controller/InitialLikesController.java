package com.club.backend.controller;

import com.club.backend.dto.club.InitialLikesDTO;
import com.club.backend.service.club.InitialLikesService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class InitialLikesController {
    @Autowired
    private InitialLikesService initialLikesService;

    @PatchMapping("/initialLikes/likes")
    public ResponseEntity<?> patchLikes(@RequestBody InitialLikesDTO dto) {
        int likes;

        if(dto.getIsLiked())
            likes = initialLikesService.likesUp(dto.getClubId());
        else
            likes = initialLikesService.likesDown(dto.getClubId());
        return ResponseEntity.ok(likes);
    }
}
