package com.doan.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.doan.dto.NewCatDTO;

public interface INewCatService {
	Map<String, String> findAll();

	List<NewCatDTO> findAll(Pageable pageable);

	int getTotalItem();

	NewCatDTO findById(long id);

	NewCatDTO save(NewCatDTO newCatDTO);

	void delete(Long[] ids);
}
