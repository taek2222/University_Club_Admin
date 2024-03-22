package com.club.backend.controller;

import com.club.backend.dto.memo.MemoDTO;
import com.club.backend.entity.memo.Memo;
import com.club.backend.service.memo.MemoService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequiredArgsConstructor
@RequestMapping("/memos")
public class MemoController {
    private final MemoService memoService;

    @GetMapping("/all")
    public ResponseEntity<Optional<List<Memo>>> getAllMemos() {
        Optional<List<Memo>> memos = memoService.getAllMemos();
        return ResponseEntity.ok().body(memos);
    }

    @GetMapping("/confirmed")
    public ResponseEntity<List<Memo>> getConfirmedMemos() {
        List<Memo> memos = memoService.getAllConfirmedMemos();
        return ResponseEntity.ok().body(memos);
    }

    @GetMapping("/unconfirmed")
    public ResponseEntity<List<Memo>> getUnconfirmedMemos() {
        List<Memo> memos = memoService.getAllUnconfirmedMemos();
        return ResponseEntity.ok().body(memos);
    }

    @GetMapping("/memo/{id}")
    public ResponseEntity<Memo> getMemoById(@PathVariable("id") Long memoId) {
        Memo memo = memoService.getMemoById(memoId);
        if (memo != null) {
            return ResponseEntity.ok().body(memo);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/memo")
    public ResponseEntity<Memo> createMemo(@RequestBody MemoDTO memoDTO) {
        return memoService.saveMemo(memoDTO)
                .map(post -> ResponseEntity.ok().body(post))
                .orElse(ResponseEntity.badRequest().build());
    }

    @PatchMapping("/memo/{id}")
    public ResponseEntity<Memo> updateMemoField(@PathVariable("id") Long memoId,
                                                @RequestParam(name="fieldName") String fieldName,
                                                @RequestParam(name="value") Object value) {
        Optional<Memo> updatedMemo = memoService.updateMemo(memoId, fieldName, value);
        if (updatedMemo.isPresent()) {
            return ResponseEntity.ok().body(updatedMemo.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @DeleteMapping("/memo/{id}")
    public ResponseEntity<Void> deleteMemo(@PathVariable("id") Long memoId) {
        boolean deleted = memoService.deleteMemo(memoId);
        return deleted ? ResponseEntity.noContent().build() : ResponseEntity.notFound().build();
    }
}
