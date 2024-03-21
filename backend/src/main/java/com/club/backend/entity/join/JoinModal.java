package com.club.backend.entity.join;

import com.club.backend.entity.club.Club;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class JoinModal {
    @Id
    @Column(name="club_id")
    private int clubId;

    @ElementCollection
    @Column(name="image")
    private List<String> modalImage;

    @Column(name="contents")
    @Lob
    private String modalContents;

    @ElementCollection
    @Column(name = "url")
    private List<String> joinUrl;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
