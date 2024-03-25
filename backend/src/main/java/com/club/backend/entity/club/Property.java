// REVIEWED: 2024-03-22 by [Oh Yeon Taek]
package com.club.backend.entity.club;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "property")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Property {
    @Id
    @Column(name="club_id")
    private int clubId;

    @ElementCollection
    @CollectionTable(name = "tags", joinColumns =
        @JoinColumn(name = "club_id")
    )
    @Column(name = "tag")
    private List<String> tags = new ArrayList<>();

    @Column(name="image_url")
    private String imageUrl;

    @Column(name="icon_url")
    private String iconUrl;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
