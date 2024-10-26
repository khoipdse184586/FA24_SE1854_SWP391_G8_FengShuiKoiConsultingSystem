package com.fengshuisystem.demo.service;

import com.fengshuisystem.demo.dto.ConsultationAnimalDTO;

import java.util.List;

public interface ConsultationAnimalService {
    ConsultationAnimalDTO createConsultationAnimal(ConsultationAnimalDTO dto, Integer requestDetailId, Integer animalCategoryId);
    List<ConsultationAnimalDTO> getAnimalsByRequestDetail(Integer requestDetailId);
}
