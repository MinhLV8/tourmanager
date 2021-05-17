package com.doan.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.converter.NewCatConverter;
import com.doan.dto.NewCatDTO;
import com.doan.entity.NewCategoryEntity;
import com.doan.repository.NewCatRepository;
import com.doan.service.INewCatService;

@Service
public class NewCatService implements INewCatService {

	@Autowired
	private NewCatRepository newCatRepository;

	@Autowired
	private NewCatConverter newCatConverter;

	@Override
	public Map<String, String> findAll() {
		Map<String, String> result = new HashMap<>();
		List<NewCategoryEntity> entities = newCatRepository.findAll();
		for (NewCategoryEntity item : entities) {
			result.put(item.getCode(), item.getName());
		}
		return result;
	}

	@Override
	public List<NewCatDTO> findAll(Pageable pageable) {
		List<NewCatDTO> models = new ArrayList<>();
		List<NewCategoryEntity> entities = newCatRepository.findAll(pageable).getContent();
		for (NewCategoryEntity item : entities) {
			NewCatDTO newCatDTO = newCatConverter.toDto(item);
			models.add(newCatDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) newCatRepository.count();
	}

	@Override
	public NewCatDTO findById(long id) {
		NewCategoryEntity entity = newCatRepository.findOne(id);
		return newCatConverter.toDto(entity);
	}

	@Override
	@Transactional
	public NewCatDTO save(NewCatDTO newCatDTO) {
		NewCategoryEntity newCatEntity = new NewCategoryEntity();
		if (newCatDTO.getId() != null) {
			NewCategoryEntity oldNewCat = newCatRepository.findOne(newCatDTO.getId());
			newCatEntity = newCatConverter.toEntity(oldNewCat,newCatDTO);
		} else {
			newCatEntity = newCatConverter.toEntity(newCatDTO);
		}
		return newCatConverter.toDto(newCatRepository.save(newCatEntity));
	}

	@Override
	@Transactional
	public void delete(Long[] ids) {
		for (long id : ids) {
			newCatRepository.delete(id);
		}
	}

}
