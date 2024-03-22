package com.club.backend.entity.memo;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "memo")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Memo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long memoId;

    @Column(name="major")
    private String major;

    @Column(name="class_of")
    private String classOf;

    @Column(name="anonymous")
    private Boolean anonymous;

    @Column(name="student_name")
    private String studentName;

    @Column(name="content", columnDefinition = "TEXT")
    private String content;

    @Column(name="color")
    private String color;

    @Column(name="confirm")
    private Boolean confirm;
}
