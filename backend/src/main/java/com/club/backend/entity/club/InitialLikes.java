package com.club.backend.entity.club;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class InitialLikes {
    @Id
    @Column(name="club_id")
    private int clubId;

    @Column(name="initial_likes")
    private int initialLikes;

    @OneToOne
    @MapsId
    @JoinColumn(name="club_id")
    private Club club;
}
