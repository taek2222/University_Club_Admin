package com.club.backend.repository.club;

import com.club.backend.entity.club.Modal;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ModalRepository extends JpaRepository<Modal, Integer> {
}
