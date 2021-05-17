package com.doan.converter;

import org.springframework.stereotype.Component;

import com.doan.dto.TourCatDTO;
import com.doan.entity.TourCategoryEntity;

@Component
public class TourCatConverter {
	
	public TourCatDTO toDto(TourCategoryEntity entity) {
		TourCatDTO result = new TourCatDTO();
		result.setId(entity.getId());
		result.setName(entity.getName());
		result.setCode(entity.getCode());
		return result;
	}

	public TourCategoryEntity toEntity(TourCatDTO tourCatDTO) {
		TourCategoryEntity result = new TourCategoryEntity();
		result.setName(tourCatDTO.getName());
		result.setCode(tourCatDTO.getCode());
		return result;
	}

	public TourCategoryEntity toEntity(TourCategoryEntity result, TourCatDTO tourCatDTO) {
		result.setName(tourCatDTO.getName());
		result.setCode(tourCatDTO.getCode());
		return result;
	}
}
