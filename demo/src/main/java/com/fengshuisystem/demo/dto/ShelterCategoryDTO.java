package com.fengshuisystem.demo.dto;

import com.fengshuisystem.demo.entity.enums.Status;
import lombok.*;
import lombok.experimental.FieldDefaults;
import java.time.Instant;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class ShelterCategoryDTO {

    Integer id;
    String shelterCategoryName;

    ShapeDTO shape;

    Double width;
    Double height;
    Double length;
    Double diameter;
    Double waterVolume;

    String waterFiltrationSystem;
    String description;

    Status status;

    Instant createdDate;
    String createdBy;
    Instant updatedDate;
    String updatedBy;

    List<ShelterImageDTO> shelterImages;
}
