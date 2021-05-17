package com.doan.converter;

import org.springframework.stereotype.Component;

import com.doan.dto.NewDTO;
import com.doan.entity.NewEntity;

@Component
public class NewConverter {

	public NewDTO toDto(NewEntity entity) {
		NewDTO result = new NewDTO();
		result.setId(entity.getId());
		result.setTitle(entity.getTitle());
		result.setThumbnail(entity.getThumbnail());
		result.setShortDes(entity.getShortDes());
		result.setContent(entity.getContent());
		result.setView(entity.getView());
		result.setCreatedBy(entity.getCreatedBy());
		result.setModifiedBy(entity.getModifiedBy());
		result.setCreatedDate(entity.getCreatedDate());
		result.setNewCategoryName(entity.getNewCategory().getName());
		result.setNewCategoryCode(entity.getNewCategory().getCode());
		return result;
	}

	public NewEntity toEntity(NewDTO newDTO) {
		NewEntity result = new NewEntity();
		result.setTitle(newDTO.getTitle());
		result.setThumbnail(newDTO.getThumbnail());
		result.setShortDes(newDTO.getShortDes());
		result.setContent(newDTO.getContent());
		result.setView(newDTO.getView());
		return result;
	}

	public NewEntity toEntity(NewEntity result, NewDTO newDTO) {
		result.setTitle(newDTO.getTitle());
		result.setThumbnail(newDTO.getThumbnail());
		result.setShortDes(newDTO.getShortDes());
		result.setContent(newDTO.getContent());
		result.setView(newDTO.getView());
		return result;
	}

}
