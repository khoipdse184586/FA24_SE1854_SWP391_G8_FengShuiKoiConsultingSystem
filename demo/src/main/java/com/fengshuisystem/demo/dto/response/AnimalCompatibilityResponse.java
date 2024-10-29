package com.fengshuisystem.demo.dto.response;


import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class AnimalCompatibilityResponse {
    String animalName;
    double animalScore;
    List<String> animalColors;
    List<String> colorCompatibilityResponses;
}
