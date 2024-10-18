package com.fengshuisystem.demo.controller;

import com.fengshuisystem.demo.dto.ApiResponse;
import com.fengshuisystem.demo.dto.ShelterImageDTO;
import com.fengshuisystem.demo.service.ShelterImageService;
import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/shelter-images")
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@Slf4j
public class ShelterImageController {
    ShelterImageService shelterImageService;

    @GetMapping
    public ApiResponse<List<ShelterImageDTO>> getAllShelterImages(@RequestParam Integer id) {
        return ApiResponse.<List<ShelterImageDTO>>builder()
                .result(shelterImageService.getAllShelterImage(id))
                .build();
    }
}
