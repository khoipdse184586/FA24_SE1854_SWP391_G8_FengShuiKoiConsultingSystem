package com.fengshuisystem.demo.dto.response;


import lombok.*;
import lombok.experimental.FieldDefaults;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AnimalCompatibilityResponse {
    double animalScore;
    String animalExplanation;
}
