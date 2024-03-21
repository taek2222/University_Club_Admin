package com.club.backend.service.club;

import com.club.backend.dto.club.ScheduleDTO;
import com.club.backend.entity.club.Club;
import com.club.backend.entity.club.Schedule;
import com.club.backend.repository.club.ClubRepository;
import com.club.backend.repository.club.ScheduleRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class ScheduleService {
    private final ClubRepository clubRepository;
    private final ScheduleRepository scheduleRepository;

    public List<ScheduleDTO> getAllSchedules() {
        List<Schedule> schedules = scheduleRepository.findAll();

        return schedules.stream().map(schedule -> {
            Club club = clubRepository.findById(schedule.getClub().getClubId())
                    .orElseThrow(() -> new EntityNotFoundException("Club not found for club id: " + schedule.getClub().getClubId()));

            ScheduleDTO scheduleDTO = new ScheduleDTO();

            scheduleDTO.setClubId(schedule.getClub().getClubId());
            scheduleDTO.setClubName(schedule.getClub().getClubName());
            scheduleDTO.setField(schedule.getClub().getType().getField());
            scheduleDTO.setIconUrl(schedule.getIconUrl());
            scheduleDTO.setImageUrl(schedule.getImageUrl());
            scheduleDTO.setPart(schedule.getPart());
            scheduleDTO.setLocation(schedule.getLocation());
            scheduleDTO.setCategory(schedule.getCategory());
            scheduleDTO.setEventTime(schedule.getEventTime());
            scheduleDTO.setEventEndTime(schedule.getEventEndTime());
            return scheduleDTO;
        }).collect(Collectors.toList());
    }
    public List<ScheduleDTO> getBySchedules(int clubId) {
        List<Schedule> schedules = scheduleRepository.findByClub_ClubId(clubId);

        return schedules.stream().map(schedule -> {
            ScheduleDTO scheduleDTO = new ScheduleDTO();

            scheduleDTO.setCategory(schedule.getCategory());
            scheduleDTO.setEventTime(schedule.getEventTime());

            return scheduleDTO;
        }).collect(Collectors.toList());
    }

    public Boolean ScheduleUse(int clubId) {
        return scheduleRepository.existsByClub_ClubId(clubId);
    }
}
