package com.doan.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.doan.dto.NewDTO;

public interface INewService {
	
	List<NewDTO> findAll(Pageable pageable);

	List<NewDTO> findByTitle(String title, Pageable pageable);

	int getTotalItem();

	NewDTO findById(long id);

	NewDTO save(NewDTO newDTO);

	void delete(Long[] ids);
	//NewDTO insert (NewDTO newDTO);
	//NewDTO update (NewDTO updateNew);
}
