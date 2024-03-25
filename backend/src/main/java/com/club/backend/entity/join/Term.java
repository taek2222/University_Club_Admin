// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.entity.join;

import com.club.backend.entity.club.Club;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Entity
@Table(name = "term")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Term {
    @Id
    @Column(name="club_id")
    private int clubId;

    @Column(name="start_date")
    private LocalDate startDate;

    @Column(name="end_date")
    private LocalDate endDate;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
