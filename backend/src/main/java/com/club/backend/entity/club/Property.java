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
public class Property {
    @Id
    @Column(name="club_id")
    private int clubId;

    @ElementCollection
    @Column(name="tags")
    private List<String> tags;

    @Column(name="image_url")
    private String imageUrl;

    @Column(name="icon_url")
    private String iconUrl;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
