// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.entity.club;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "club")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Club {
    @Id
    @Column(name="club_id")
    private int clubId;

    @Column(name="club_name")
    private String clubName;

    @ManyToOne
    @JoinColumn(name="type_id")
    private Type type;
}
