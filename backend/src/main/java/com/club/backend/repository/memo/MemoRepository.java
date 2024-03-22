package com.club.backend.repository.memo;

import com.club.backend.entity.memo.Memo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MemoRepository extends JpaRepository<Memo, Long> {
    List<Memo> findByConfirm(boolean confirm);
}
