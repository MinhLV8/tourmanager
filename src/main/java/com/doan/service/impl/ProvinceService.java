package com.doan.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.converter.ProvinceConverter;
import com.doan.dto.ProvinceDTO;
import com.doan.entity.ProvinceEntity;
import com.doan.repository.ProvinceRepository;
import com.doan.service.IProvinceService;

@Service
public class ProvinceService implements IProvinceService {

	@Autowired
	private ProvinceRepository provinceRepository;

	@Autowired
	private ProvinceConverter provinceConverter;

	@Override
	public Map<String, String> findAll() {
		Map<String, String> result = new HashMap<>();
		List<ProvinceEntity> entities = provinceRepository.findAll();
		for (ProvinceEntity item : entities) {
			result.put(item.getCode(), item.getName());
		}
		return result;
	}

	@Override
	public List<ProvinceDTO> findAll(Pageable pageable) {
		List<ProvinceDTO> models = new ArrayList<>();
		List<ProvinceEntity> entities = provinceRepository.findAll(pageable).getContent();
		for (ProvinceEntity item : entities) {
			ProvinceDTO provinceDTO = provinceConverter.toDto(item);
			models.add(provinceDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) provinceRepository.count();
	}

	@Override
	public ProvinceDTO findById(long id) {
		ProvinceEntity entity = provinceRepository.findOne(id);
		return provinceConverter.toDto(entity);
	}

	@Override
	@Transactional
	public ProvinceDTO save(ProvinceDTO provinceDTO) {
		ProvinceEntity provinceEntity = new ProvinceEntity();
		if (provinceDTO.getId() != null) {
			ProvinceEntity oldProvince = provinceRepository.findOne(provinceDTO.getId());
			provinceEntity = provinceConverter.toEntity(oldProvince, provinceDTO);
		} else {
			provinceEntity = provinceConverter.toEntity(provinceDTO);
		}
		return provinceConverter.toDto(provinceRepository.save(provinceEntity));
	}

	@Override
	@Transactional
	public void delete(Long[] ids) {
		for (long id : ids) {
			provinceRepository.delete(id);
		}
	}

}
