package com.club.backend.service.join;

import com.club.backend.dto.join.JoinDTO;
import com.club.backend.dto.join.JoinModalDTO;
import com.club.backend.entity.join.JoinModal;
import com.club.backend.repository.join.JoinModalRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JoinModalService {
    @Autowired
    private JoinModalRepository joinModalRepository;

    public JoinModalDTO getJoinModalSearch(int clubId) {
        JoinModal joinModal = joinModalRepository.findById(clubId)
                .orElseThrow(() -> new EntityNotFoundException("JoinModal Not Found Club Id " + clubId));
        JoinModalDTO dto = new JoinModalDTO();

        dto.setModalImage(joinModal.getModalImage());
        dto.setModalContents(joinModal.getModalContents());
        dto.setJoinUrl(joinModal.getJoinUrl());

        return dto;
    }
}
