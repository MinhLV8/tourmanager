package com.doan.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.doan.converter.TourConverter;
import com.doan.dto.TourDTO;
import com.doan.entity.ProvinceEntity;
import com.doan.entity.TourCategoryEntity;
import com.doan.entity.TourEntity;
import com.doan.repository.ProvinceRepository;
import com.doan.repository.TourCatRepository;
import com.doan.repository.TourRepository;
import com.doan.service.ITourService;

@Service
public class TourService implements ITourService {

	@Autowired
	private TourRepository tourRepository;

	@Autowired
	private TourConverter tourConverter;

	@Autowired
	private TourCatRepository tourCatRepository;
	
	@Autowired
	private ProvinceRepository provinceRepository;

	@Override
	public List<TourDTO> findAll(Pageable pageable) {
		List<TourDTO> models = new ArrayList<>();
		List<TourEntity> entities = tourRepository.findAll(pageable).getContent();
		for (TourEntity item : entities) {
			TourDTO tourDTO = tourConverter.toDto(item);
			models.add(tourDTO);
		}
		return models;
	}

	@Override
	public List<TourDTO> findByName(String name, Pageable pageable) {
		List<TourDTO> models = new ArrayList<>();
		List<TourEntity> entities = tourRepository.findByNameContaining(name, pageable);
		for (TourEntity item : entities) {
			TourDTO tourDTO = tourConverter.toDto(item);
			models.add(tourDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) tourRepository.count();
	}

	@Override
	public TourDTO findById(long id) {
		TourEntity entity = tourRepository.findOne(id);
		return tourConverter.toDto(entity);
	}

	@Override
	@Transactional
	public TourDTO save(TourDTO tourDTO) {
		TourCategoryEntity tourCategory = tourCatRepository.findOneByCode(tourDTO.getTourCategoryCode());
		ProvinceEntity province = provinceRepository.findOneByCode(tourDTO.getProvinceCode());
		TourEntity tourEntity = new TourEntity();
		if (tourDTO.getId() != null) {
			TourEntity oldTour = tourRepository.findOne(tourDTO.getId());
			oldTour.setTourCategory(tourCategory);
			oldTour.setProvince(province);
			tourEntity = tourConverter.toEntity(oldTour, tourDTO);
		} else {
			tourEntity = tourConverter.toEntity(tourDTO);
			tourEntity.setTourCategory(tourCategory);
			tourEntity.setProvince(province);
		}
		return tourConverter.toDto(tourRepository.save(tourEntity));
	}

	@Override
	@Transactional
	public void delete(Long[] ids) {
		for (long id : ids) {
			tourRepository.delete(id);
		}
	}

}
