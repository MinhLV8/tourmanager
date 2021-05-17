package com.doan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doan.entity.NewCategoryEntity;

public interface NewCatRepository extends JpaRepository<NewCategoryEntity, Long> {
	
	NewCategoryEntity findOneByCode(String code);
}
