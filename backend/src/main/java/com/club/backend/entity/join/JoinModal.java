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
@Table(name = "join_modal")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class JoinModal {
    @Id
    @Column(name="club_id")
    private int clubId;

    @ElementCollection
    @CollectionTable(name = "join_modal_image", joinColumns =
    @JoinColumn(name = "club_id")
    )
    @Column(name="url")
    private List<String> modalImage = new ArrayList<>();

    @Column(name="contents")
    private String modalContents;

    @ElementCollection
    @CollectionTable(name = "join_paths_url", joinColumns =
        @JoinColumn(name = "club_id")
    )
    @Column(name = "url")
    private List<String> joinUrl;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
