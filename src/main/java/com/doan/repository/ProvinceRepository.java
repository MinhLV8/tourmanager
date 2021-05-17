package com.doan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doan.entity.ProvinceEntity;

public interface ProvinceRepository extends JpaRepository<ProvinceEntity, Long> {
	ProvinceEntity findOneByCode(String code);

}
