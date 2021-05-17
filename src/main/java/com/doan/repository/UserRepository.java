package com.doan.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import com.doan.entity.UserEntity;

@Transactional
public interface UserRepository extends JpaRepository<UserEntity, Long> {

	UserEntity findOneByUserNameAndStatus(String name, int status);
	
	List<UserEntity> findByUserNameContaining(String userName);
	
	@Query(value = "select * from user where user.gioitinh = 0", nativeQuery = true)
	List<UserEntity> findByGender(String gender);
	
}
