package com.fengshuisystem.demo.service.impl;

import com.fengshuisystem.demo.dto.PageResponse;
import com.fengshuisystem.demo.dto.ShelterCategoryDTO;
import com.fengshuisystem.demo.entity.ShelterCategory;
import com.fengshuisystem.demo.entity.enums.Status;
import com.fengshuisystem.demo.exception.AppException;
import com.fengshuisystem.demo.exception.ErrorCode;
import com.fengshuisystem.demo.mapper.ShelterMapper;
import com.fengshuisystem.demo.repository.ShelterRepository;
import com.fengshuisystem.demo.service.ShelterService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import java.time.Instant;


@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class ShelterServiceImpl implements ShelterService {
    ShelterRepository shelterRepository;
    ShelterMapper shelterMapper;
    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public ShelterCategoryDTO createShelter(ShelterCategoryDTO request) {
        var context = SecurityContextHolder.getContext();
        String name = context.getAuthentication().getName();
        if(shelterRepository.existsByShelterCategoryName(request.getShelterCategoryName())) throw new AppException(ErrorCode.SHELTER_EXISTED);
        ShelterCategory shelterCategory = shelterMapper.toEntity(request);
        shelterCategory.setStatus(Status.ACTIVE);
        shelterCategory.setCreatedDate(Instant.now());
        shelterCategory.setCreatedBy(name);
        return shelterMapper.toDto(shelterRepository.save(shelterCategory));
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public PageResponse<ShelterCategoryDTO> getSheltersBySearch(String name, int page, int size) {
        Sort sort = Sort.by("createdDate").descending();
        Pageable pageable = PageRequest.of(page - 1, size, sort);
        var pageData = shelterRepository.findAllByShelterCategoryName(name, pageable);
        if(pageData.isEmpty()) {
            throw new AppException(ErrorCode.SHELTER_NOT_EXISTED);
        }
        return PageResponse.<ShelterCategoryDTO>builder()
                .currentPage(page)
                .pageSize(pageData.getSize())
                .totalPages(pageData.getTotalPages())
                .totalElements(pageData.getTotalElements())
                .data(pageData.getContent().stream().map(shelterMapper::toDto).toList())
                .build();
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public PageResponse<ShelterCategoryDTO> getAllShelters(int page, int size) {
        String status = "ACTIVE";
        Sort sort = Sort.by("createdDate").descending();
        Pageable pageable = PageRequest.of(page - 1, size, sort);
        var pageData = shelterRepository.findAllByStatus(status, pageable);
        if(pageData.isEmpty()) {
            throw new AppException(ErrorCode.ANIMAL_NOT_EXISTED);
        }
        return PageResponse.<ShelterCategoryDTO>builder()
                .currentPage(page)
                .pageSize(pageData.getSize())
                .totalPages(pageData.getTotalPages())
                .totalElements(pageData.getTotalElements())
                .data(pageData.getContent().stream().map(shelterMapper::toDto).toList())
                .build();
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public void deleteShelter(Integer id) {
        var shelterCategory = shelterRepository.findById(id).orElseThrow(() -> new AppException(ErrorCode.SHELTER_NOT_EXISTED));
        shelterCategory.setStatus(Status.DELETED);
        shelterRepository.save(shelterCategory);
    }

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public ShelterCategoryDTO updateShelter(Integer id, ShelterCategoryDTO request) {
        var context = SecurityContextHolder.getContext();
        String name = context.getAuthentication().getName();
        ShelterCategory shelterCategory = shelterRepository.findById(id).orElseThrow(() -> new AppException(ErrorCode.SHELTER_NOT_EXISTED));
        shelterMapper.update(request, shelterCategory);
        shelterCategory.setUpdatedDate(Instant.now());
        shelterCategory.setUpdatedBy(name);
        return shelterMapper.toDto(shelterRepository.save(shelterCategory));
    }
}
