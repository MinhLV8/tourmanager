package com.doan.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.doan.entity.NewEntity;

public interface NewRepository extends JpaRepository<NewEntity, Long> {

	List<NewEntity> findByTitleContaining(String title, Pageable pageable);
	
	/* @Query("SELECT t FROM Thing t WHERE t.fooIn = ?1 AND t.bar = ?2") */
}
