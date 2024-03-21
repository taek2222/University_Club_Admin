package com.club.backend.service.join;

import com.club.backend.entity.join.Term;
import com.club.backend.repository.join.TermRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.temporal.ChronoUnit;

@Service
public class TermService {

    public String calculate(Term term) {
        long daysBetween = ChronoUnit.DAYS.between(term.getStartDate(), term.getEndDate());

        return "D-" + daysBetween;
    }
}
