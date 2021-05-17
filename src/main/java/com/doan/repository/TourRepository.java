package com.doan.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.doan.entity.TourEntity;

public interface TourRepository extends JpaRepository<TourEntity, Long> {
	
	List<TourEntity> findByNameContaining(String name, Pageable pageable);

}
