package com.doan.service;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

import com.doan.dto.ProvinceDTO;

public interface IProvinceService {

	Map<String, String> findAll();

	List<ProvinceDTO> findAll(Pageable pageable);

	int getTotalItem();

	ProvinceDTO findById(long id);

	ProvinceDTO save(ProvinceDTO provinceDTO);

	void delete(Long[] ids);
}
