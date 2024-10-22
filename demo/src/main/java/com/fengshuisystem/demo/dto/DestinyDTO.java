package com.fengshuisystem.demo.dto;

import lombok.*;
import lombok.experimental.FieldDefaults;

import java.util.List;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class DestinyDTO {
    Integer id;
    String destiny;
    List<DirectionDTO> directions;
    List<NumberDTO> numbers;
}