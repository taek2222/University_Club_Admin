package com.club.backend.repository.join;

import com.club.backend.entity.join.Join;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface JoinRepository extends JpaRepository<Join, Integer> {
}
