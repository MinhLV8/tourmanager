package com.doan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doan.entity.TourCategoryEntity;

public interface TourCatRepository extends JpaRepository<TourCategoryEntity, Long> {
	
	TourCategoryEntity findOneByCode(String code);

}
