package com.doan.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.doan.entity.RoleEntity;

public interface RoleRepository extends JpaRepository<RoleEntity, Long> {

	RoleEntity findOneByRoleCode(String roleCode);

}
