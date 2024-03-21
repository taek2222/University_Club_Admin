package com.club.backend.service.club;

import com.club.backend.dto.club.PropertyDTO;
import com.club.backend.entity.club.Property;
import com.club.backend.repository.club.PropertyRepository;
import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.ArrayList;

@Service
@RequiredArgsConstructor
public class PropertyService {
}
