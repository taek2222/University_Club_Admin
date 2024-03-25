// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.entity.join;

import com.club.backend.entity.club.Club;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="join_table")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Join {
    @Id
    @Column(name="club_id")
    private int clubId;

    @Column(name="icon_image")
    private String iconImage;

    @Column(name="title")
    private String title;

    @ElementCollection
    @CollectionTable(name = "join_paths", joinColumns =
        @JoinColumn(name = "club_id")
    )
    @Column(name="path")
    private List<Boolean> paths = new ArrayList<>();

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
