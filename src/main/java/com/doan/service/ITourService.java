package com.doan.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.doan.dto.TourDTO;

public interface ITourService {
	
	List<TourDTO> findAll(Pageable pageable);

	List<TourDTO> findByName(String name, Pageable pageable);

	int getTotalItem();

	TourDTO findById(long id);

	TourDTO save(TourDTO newDTO);

	void delete(Long[] ids);
}
