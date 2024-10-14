package com.fengshuisystem.demo.service;

import com.fengshuisystem.demo.dto.AnimalCategoryDTO;
import com.fengshuisystem.demo.dto.PageResponse;

import java.util.List;

public interface AnimalService {
     AnimalCategoryDTO createAnimal(AnimalCategoryDTO request);
     PageResponse<AnimalCategoryDTO> getAnimalsBySearch(AnimalCategoryDTO search, int page, int size);
     PageResponse<AnimalCategoryDTO> getAnimals(int page, int size);
     void deleteAnimal(Integer id);
     AnimalCategoryDTO updateAnimal(Integer id, AnimalCategoryDTO request);
     List<AnimalCategoryDTO> getAnimalCategoryByColorId(int color);
    }
