package com.club.backend.controller;

import com.club.backend.dto.club.ScheduleDTO;
import com.club.backend.service.club.ScheduleService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/schedules")
public class ScheduleController {
    private final ScheduleService scheduleService;

    @PostMapping("/create")
    public ScheduleDTO createSchedule(@RequestBody ScheduleDTO scheduleDTO) {
        return scheduleService.createSchedule(scheduleDTO);
    }

    @GetMapping("/all")
    public List<ScheduleDTO> getAllSchedules() {
        return scheduleService.getAllSchedules();
    }

    @GetMapping("/modal/{clubId}")
    public List<ScheduleDTO> getBySchedules(@PathVariable("clubId") int clubId) {
        return scheduleService.getBySchedules(clubId);
    }

    @PatchMapping("/update/{scheduleId}")
    public ScheduleDTO updateSchedule(@PathVariable(name = "scheduleId") int scheduleId, @RequestBody ScheduleDTO scheduleDTO) {
        return scheduleService.updateSchedule(scheduleId, scheduleDTO);
    }

    @DeleteMapping("/delete/{scheduleId}")
    public String deleteSchedule(@PathVariable(name = "scheduleId") int scheduleId) {
        return scheduleService.deleteSchedule(scheduleId);
    }

}
