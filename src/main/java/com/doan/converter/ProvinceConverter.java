package com.doan.converter;

import org.springframework.stereotype.Component;

import com.doan.dto.ProvinceDTO;
import com.doan.entity.ProvinceEntity;

@Component
public class ProvinceConverter {
	
	public ProvinceDTO toDto(ProvinceEntity entity) {
		
		ProvinceDTO result = new ProvinceDTO();
		result.setId(entity.getId());
		result.setName(entity.getName());
		result.setCode(entity.getCode());
		result.setCountryName(entity.getCountry().getName());
		result.setCountryCode(entity.getCountry().getCode());
		return result;
	}

	public ProvinceEntity toEntity(ProvinceDTO provinceDTO) {
		ProvinceEntity result = new ProvinceEntity();
		result.setName(provinceDTO.getName());
		result.setCode(provinceDTO.getCode());
		return result;
	}

	public ProvinceEntity toEntity(ProvinceEntity result, ProvinceDTO provinceDTO) {
		result.setName(provinceDTO.getName());
		result.setCode(provinceDTO.getCode());
		return result;
	}
}
