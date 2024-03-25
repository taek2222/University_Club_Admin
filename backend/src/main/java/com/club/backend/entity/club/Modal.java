// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.entity.club;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "modal")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Modal {
    @Id
    @Column(name="club_id")
    private int clubId;

    @Column(name="title")
    private String modalTitle;

    @Column(name="contents")
    private String modalContents;

    @ElementCollection
    @CollectionTable(name = "modal_image", joinColumns =
        @JoinColumn(name = "club_id")
    )
    @Column(name="url")
    private List<String> modalImage = new ArrayList<>();

    @Column(name="location_url")
    private String modalLocationImage;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
