package com.club.backend.repository.club;

import com.club.backend.entity.club.InitialLikes;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface InitialLikesRepository extends JpaRepository<InitialLikes, Integer> {
}
