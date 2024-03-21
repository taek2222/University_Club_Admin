package com.club.backend.repository.club;

import com.club.backend.entity.club.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule, Integer> {
    List<Schedule> findByClub_ClubId(int clubId);
    boolean existsByClub_ClubId(int clubId);
}
