package com.doan.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.doan.dto.TourCatDTO;

public interface ITourCatService {
	
	Map<String, String> findAll();

	List<TourCatDTO> findAll(Pageable pageable);

	int getTotalItem();

	TourCatDTO findById(long id);

	TourCatDTO save(TourCatDTO tourCatDTO);

	void delete(Long[] ids);
}
