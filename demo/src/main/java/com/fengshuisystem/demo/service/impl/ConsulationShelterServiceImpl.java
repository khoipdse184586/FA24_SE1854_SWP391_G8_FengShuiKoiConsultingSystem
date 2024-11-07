package com.fengshuisystem.demo.service.impl;

import com.fengshuisystem.demo.dto.ConsultationShelterDTO;
import com.fengshuisystem.demo.entity.*;
import com.fengshuisystem.demo.entity.enums.Status;
import com.fengshuisystem.demo.exception.AppException;
import com.fengshuisystem.demo.exception.ErrorCode;
import com.fengshuisystem.demo.mapper.ConsultationShelterMapper;
import com.fengshuisystem.demo.repository.*;
import com.fengshuisystem.demo.service.ConsulationShelterService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.List;
import java.util.Set;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class ConsulationShelterServiceImpl implements ConsulationShelterService {
    ConsultationShelterMapper consultationShelterMapper;
    ConsulationRequestDetailsRepository consulationRequestDetailsRepository;
    ConsulationResultRepository consulationResultRepository;
    DirectionRepository directionRepository;
    ConsulationShelterRepository consulationShelterRepository;
    ShelterRepository shelterRepository;

    @Override
    @PreAuthorize("hasRole('ADMIN')")
    public ConsultationShelterDTO createConsulationShelter(Integer id, List<Integer> ids, ConsultationShelterDTO consultationShelterDTO) {
        var context = SecurityContextHolder.getContext();
        String name = context.getAuthentication().getName();
        Set<Direction> directions = directionRepository.findAllByIdIn(ids);
        ConsultationResult consultationResult = consulationResultRepository.findById(id)
                .orElseThrow(() -> new AppException(ErrorCode.CONSULATION_RESULT_NOT_EXISTED));
        ConsultationRequestDetail consultationRequestDetails = consulationRequestDetailsRepository.findByRequestDetailId(consultationResult.getRequestDetail().getId());
        ShelterCategory shelterCategory = shelterRepository.findById(consultationRequestDetails.getAnimalCategory().getId()).orElseThrow(() -> new AppException(ErrorCode.SHELTER_NOT_EXISTED));
        ConsultationShelter consultationShelter = consultationShelterMapper.toEntity(consultationShelterDTO);
        consultationShelter.setShelterCategory(shelterCategory);
        consultationShelter.setCreatedBy(name);
        consultationShelter.setCreatedDate(Instant.now());
        consultationShelter.setStatus(Status.COMPLETED);
        consultationShelter.setUpdatetedDate(Instant.now());
        consultationShelter.setUpdatetedBy(name);
        consultationShelter.setDirections(directions);
        consultationShelter.setConsultation(consultationResult);
        return consultationShelterMapper.toDto(consulationShelterRepository.save(consultationShelter));

    }

}