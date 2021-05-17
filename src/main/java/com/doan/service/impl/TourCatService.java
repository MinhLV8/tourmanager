package com.doan.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.converter.TourCatConverter;
import com.doan.dto.TourCatDTO;
import com.doan.entity.TourCategoryEntity;
import com.doan.repository.TourCatRepository;
import com.doan.service.ITourCatService;

@Service
public class TourCatService implements ITourCatService {

	@Autowired
	private TourCatRepository tourCatRepository;

	@Autowired
	private TourCatConverter tourCatConverter;

	@Override
	public Map<String, String> findAll() {
		Map<String, String> result = new HashMap<>();
		List<TourCategoryEntity> entities = tourCatRepository.findAll();
		for (TourCategoryEntity item : entities) {
			result.put(item.getCode(), item.getName());
		}
		return result;
	}

	@Override
	public List<TourCatDTO> findAll(Pageable pageable) {
		List<TourCatDTO> models = new ArrayList<>();
		List<TourCategoryEntity> entities = tourCatRepository.findAll(pageable).getContent();
		for (TourCategoryEntity item : entities) {
			TourCatDTO tourCatDTO = tourCatConverter.toDto(item);
			models.add(tourCatDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) tourCatRepository.count();
	}

	@Override
	public TourCatDTO findById(long id) {
		TourCategoryEntity entity = tourCatRepository.findOne(id);
		return tourCatConverter.toDto(entity);
	}

	@Override
	@Transactional
	public TourCatDTO save(TourCatDTO tourCatDTO) {
		TourCategoryEntity tourCatEntity = new TourCategoryEntity();
		if (tourCatDTO.getId() != null) {
			TourCategoryEntity oldTourCat = tourCatRepository.findOne(tourCatDTO.getId());
			tourCatEntity = tourCatConverter.toEntity(oldTourCat, tourCatDTO);
		} else {
			tourCatEntity = tourCatConverter.toEntity(tourCatDTO);
		}
		return tourCatConverter.toDto(tourCatRepository.save(tourCatEntity));
	}

	@Override
	@Transactional
	public void delete(Long[] ids) {
		for (long id : ids) {
			tourCatRepository.delete(id);
		}
	}

}
