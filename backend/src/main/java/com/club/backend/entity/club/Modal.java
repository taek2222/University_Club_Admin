package com.club.backend.entity.club;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Modal {
    @Id
    @Column(name="club_id")
    private int clubId;

    @Column(name="title")
    private String modalTitle;

    @Lob
    @Column(name="contents")
    private String modalContents;

    @ElementCollection
    @Column(name="url")
    private List<String> modalImage;

    @Column(name="location_url")
    private String modalLocationImage;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
