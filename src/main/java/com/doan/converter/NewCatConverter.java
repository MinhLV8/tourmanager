package com.doan.converter;

import org.springframework.stereotype.Component;

import com.doan.dto.NewCatDTO;
import com.doan.entity.NewCategoryEntity;

@Component
public class NewCatConverter {

	public NewCatDTO toDto(NewCategoryEntity entity) {
		
		NewCatDTO result = new NewCatDTO();
		result.setId(entity.getId());
		result.setName(entity.getName());
		result.setCode(entity.getCode());
		return result;
	}

	public NewCategoryEntity toEntity(NewCatDTO newCatDTO) {
		NewCategoryEntity result = new NewCategoryEntity();
		result.setName(newCatDTO.getName());
		result.setCode(newCatDTO.getCode());
		return result;
	}
	public NewCategoryEntity toEntity(NewCategoryEntity result,NewCatDTO newCatDTO) {
		result.setName(newCatDTO.getName());
		result.setCode(newCatDTO.getCode());
		return result;
	}

}
